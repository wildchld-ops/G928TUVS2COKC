.class public abstract Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;
.super Lcom/sec/android/app/launcher/activities/PresenterBase;
.source "EditBarPresenterBase.java"

# interfaces
.implements Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;
    }
.end annotation


# static fields
.field private static final INIT_DURATION:F = 0.01f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mButtonDragListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mHide:Z

.field private mInitUiAniPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

.field protected mLauncherActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

.field private mShowEditBarItems:I

.field private mSlidingAnimDuration:F

.field protected mTitleBar:Lcom/sec/daliviews/views/ContainerView;

.field protected mTranslucentStatusBarHeight:I

.field private mUIAnimSetInitial:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

.field private mUIAnimSetSlideIn:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

.field private mUIAnimSetSlideOut:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

.field private mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

.field protected mUseNewTrashAnim:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/PresenterBase;-><init>(Lcom/sec/android/app/launcher/activities/PresenterBase$ItemFilter;)V

    iput v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTranslucentStatusBarHeight:I

    iput v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mShowEditBarItems:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mButtonDragListeners:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mHide:Z

    iput-boolean v3, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUseNewTrashAnim:Z

    check-cast p1, Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mLauncherActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0239

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mSlidingAnimDuration:F

    new-instance v1, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-direct {v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUIAnimSetSlideIn:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    new-instance v1, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-direct {v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUIAnimSetSlideOut:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    new-instance v1, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-direct {v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUIAnimSetInitial:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    new-instance v1, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mSlidingAnimDuration:F

    invoke-direct {v1, v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;-><init>(F)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUseNewTrashAnim:Z

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUIAnimSetInitial:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUIAnimSetInitial:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUIAnimSetSlideIn:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUIAnimSetSlideIn:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUIAnimSetSlideOut:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUIAnimSetSlideOut:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->destroy()V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mInitUiAniPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mInitUiAniPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->destroy()V

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mButtonDragListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->destroy()V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getHeight()I

    move-result v0

    return v0
.end method

.method protected abstract getParentView()Lcom/sec/daliviews/views/ContainerView;
.end method

.method public getRootView()Lcom/sec/daliviews/views/ContainerViewBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getWidth()I

    move-result v0

    return v0
.end method

.method public getmShowEditBarItems()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mShowEditBarItems:I

    return v0
.end method

.method public handleBackPress()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->hideEditBar()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideEditBar()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mHide:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->destroy()V

    new-instance v0, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mSlidingAnimDuration:F

    invoke-direct {v0, v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;-><init>(F)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUIAnimSetSlideOut:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->add(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/uiAnimations/UIAnimationSet;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    new-instance v1, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$1;-><init>(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;)V

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->connectToUIAnimationSignal(Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->start()V

    return-void
.end method

.method public invalidDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/ContainerViewBase;)Z
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mButtonDragListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->invalidDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/ContainerViewBase;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected isItemEditable(Lcom/sec/daliviews/views/Item;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sec/android/app/launcher/data/FolderItem;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isMenuItem(Lcom/sec/daliviews/views/Item;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Lcom/sec/android/app/launcher/data/LauncherItem;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getItemType()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_APPLICATION:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/LauncherItem;->getDataSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method protected isWidgetListItem(Lcom/sec/daliviews/views/Item;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v2, p1, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-nez v2, :cond_2

    instance-of v2, p1, Lcom/sec/android/app/launcher/data/WidgetListItem;

    if-eqz v2, :cond_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/LauncherItem;->getDataSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_WIDGETS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onDragEnd()V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mButtonDragListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->onDragEnd()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mButtonDragListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mButtonDragListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mButtonDragListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mButtonDragListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onItemAdded(Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onItemBadgeUpdated(Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onItemDeleted(Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onItemUpdated(Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onItemsUpdated(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResizeStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mButtonDragListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->onResizeStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected registerDragListener(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mButtonDragListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public restoreOffsetPosition()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTranslucentStatusBarHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setYPosition(F)V

    return-void
.end method

.method public setAccessibilityMode(Z)V
    .locals 0

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    return-void
.end method

.method public setVisibilityAnimated(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTranslucentStatusBarHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setYPosition(F)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mSlidingAnimDuration:F

    invoke-virtual {v0, p1, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibilityAnimated(IF)V

    return-void
.end method

.method protected setupAnimations()V
    .locals 8

    const/4 v7, 0x0

    const v6, 0x3c23d70a    # 0.01f

    const/4 v5, 0x0

    new-instance v1, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;

    new-instance v3, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    iget v4, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTranslucentStatusBarHeight:I

    int-to-float v4, v4

    invoke-direct {v3, v5, v4, v5}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>(FFF)V

    iget v4, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mSlidingAnimDuration:F

    invoke-direct {v1, v3, v6, v4, v7}, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;-><init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;FFI)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUIAnimSetSlideIn:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v3, v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;)V

    new-instance v2, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;

    new-instance v3, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ContainerView;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {v3, v5, v4, v5}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>(FFF)V

    iget v4, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mSlidingAnimDuration:F

    invoke-direct {v2, v3, v6, v4, v7}, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;-><init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;FFI)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUIAnimSetSlideOut:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v3, v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;)V

    new-instance v0, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;

    new-instance v3, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ContainerView;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {v3, v5, v4, v5}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>(FFF)V

    invoke-direct {v0, v3, v5, v6, v7}, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;-><init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;FFI)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUIAnimSetInitial:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v3, v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;)V

    new-instance v3, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-direct {v3, v6}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;-><init>(F)V

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mInitUiAniPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mInitUiAniPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUIAnimSetInitial:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v3, v4, v5}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->add(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/uiAnimations/UIAnimationSet;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mInitUiAniPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v3}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->start()V

    return-void
.end method

.method protected setupEditBar(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ContainerView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimatePositioning(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimateAddingView(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimateResizing(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setDragEventInterest(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->getParentView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->setupAnimations()V

    return-void
.end method

.method protected setupEditBar(Lcom/sec/daliviews/views/Item;I)V
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mShowEditBarItems:I

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mButtonDragListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->onPreDragStart(Lcom/sec/daliviews/views/Item;)Z

    move-result v0

    if-nez v1, :cond_1

    move v1, v0

    :cond_1
    if-eqz v0, :cond_0

    iget v4, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mShowEditBarItems:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mShowEditBarItems:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_6

    const/4 v4, 0x1

    if-ne v1, v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_5

    instance-of v4, p1, Lcom/sec/android/app/launcher/data/WidgetListItem;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ContainerView;->stopAllAnim()V

    :cond_3
    invoke-virtual {p0, p2}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->setVisibilityAnimated(I)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->restoreOffsetPosition()V

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ContainerView;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ContainerView;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ContainerViewBase;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    goto :goto_1
.end method

.method protected showAppInfo(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/android/app/launcher/data/HomeItem;)V
    .locals 5

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragCancel()V

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/data/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v3, "package"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10800000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mLauncherActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public showEditBar()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->startSlideInAnimation(I)V

    return-void
.end method

.method public showEditBar(Lcom/sec/daliviews/views/Item;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->setupEditBar(Lcom/sec/daliviews/views/Item;I)V

    return-void
.end method

.method protected startSlideInAnimation(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->destroy()V

    new-instance v0, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mSlidingAnimDuration:F

    invoke-direct {v0, v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;-><init>(F)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUIAnimSetInitial:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->add(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/uiAnimations/UIAnimationSet;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUIAnimSetSlideIn:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->add(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/uiAnimations/UIAnimationSet;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->start()V

    return-void
.end method

.method protected uninstallApp(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/android/app/launcher/data/HomeItem;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/data/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    const-string v4, "package"

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mLauncherActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v3, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->TAG:Ljava/lang/String;

    const-string v4, "Problem uninstalling package. This should only happen when installed outside of /system/app."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mLauncherActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const-string v4, "Not installed with permissions needed for uninstalling"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v3, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->TAG:Ljava/lang/String;

    const-string v4, "Problem uninstalling package. This should only happen when either Activity or PackageManager is NULL."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mLauncherActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const-string v4, "Unable to install, please try again !"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

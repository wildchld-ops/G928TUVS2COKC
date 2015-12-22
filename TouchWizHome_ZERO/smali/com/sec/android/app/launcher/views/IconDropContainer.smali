.class public Lcom/sec/android/app/launcher/views/IconDropContainer;
.super Lcom/sec/daliviews/views/ContainerView;
.source "IconDropContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/views/IconDropContainer$IconDropAnimatable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private dragItemContainerType:I

.field private mAcceptDropDistanceFactor:F

.field protected mAnimScale:Z

.field private thisItemContainerType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/views/IconDropContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/views/IconDropContainer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/ContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/launcher/views/IconDropContainer;->mAcceptDropDistanceFactor:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/views/IconDropContainer;->mAnimScale:Z

    iput v2, p0, Lcom/sec/android/app/launcher/views/IconDropContainer;->dragItemContainerType:I

    iput v2, p0, Lcom/sec/android/app/launcher/views/IconDropContainer;->thisItemContainerType:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00c5

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/views/IconDropContainer;->mAcceptDropDistanceFactor:F

    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/views/IconDropContainer;->addAllowedViewType(I)V

    return-void
.end method

.method private isPossibleToDrop(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 5

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/IconDropContainer;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/IconDropContainer;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ContainerViewBase;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->getContainerType()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/launcher/views/IconDropContainer;->dragItemContainerType:I

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomeItem;->getContainerType()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/launcher/views/IconDropContainer;->thisItemContainerType:I

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomeItem;->getContainerType()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAppsFragment()Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAppsFragment()Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAppsFragment()Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getListOrder()Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->ALPHABETICAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/sec/android/app/launcher/views/IconDropContainer;->TAG:Ljava/lang/String;

    const-string v4, "can not drop app icon when apps is alphabet order"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomeItem;->getContainerType()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v4

    if-eq v3, v4, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomeItem;->getContainerType()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->HOTSEAT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v4

    if-eq v3, v4, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomeItem;->getContainerType()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public canAcceptDrop(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/app/launcher/views/IconDropContainer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IconDropContainer.canAcceptDrop()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/IconDropContainer;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v1

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/IconDropContainer;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/views/IconDropContainer;->canAddViewType(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/views/IconDropContainer;->isPossibleToDrop(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/views/IconDropContainer;->canAddViewType(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v0

    goto :goto_0
.end method

.method public canAcceptDrop(Lcom/sec/daliviews/views/NativeViewBase;II)Z
    .locals 3

    sget-object v0, Lcom/sec/android/app/launcher/views/IconDropContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IconDropContainer.canAcceptDrop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/launcher/views/IconDropContainer;->mAcceptDropDistanceFactor:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/views/IconDropContainer;->canAcceptDrop(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v0

    return v0
.end method

.method public onDragEnd()V
    .locals 1

    invoke-super {p0}, Lcom/sec/daliviews/views/ContainerView;->onDragEnd()V

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/IconDropContainer;->mAnimScale:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/IconDropContainer;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/launcher/views/IconDropContainer$IconDropAnimatable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/IconDropContainer;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/IconDropContainer$IconDropAnimatable;

    invoke-interface {v0}, Lcom/sec/android/app/launcher/views/IconDropContainer$IconDropAnimatable;->animateOnDragExit()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/views/IconDropContainer;->mAnimScale:Z

    :cond_0
    return-void
.end method

.method public onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/sec/daliviews/views/ContainerView;->onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/views/IconDropContainer;->canAcceptDrop(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/launcher/views/IconDropContainer;->dragItemContainerType:I

    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/sec/android/app/launcher/views/IconDropContainer;->thisItemContainerType:I

    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAppsFragment()Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsFragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getListMode()Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->NORMAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-eq v3, v4, :cond_0

    :cond_2
    iget-boolean v3, p0, Lcom/sec/android/app/launcher/views/IconDropContainer;->mAnimScale:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/IconDropContainer;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/android/app/launcher/views/IconDropContainer$IconDropAnimatable;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/launcher/views/IconDropContainer;->mAnimScale:Z

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/IconDropContainer;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/views/IconDropContainer$IconDropAnimatable;

    invoke-interface {v3}, Lcom/sec/android/app/launcher/views/IconDropContainer$IconDropAnimatable;->animateOnDragEnter()V

    goto :goto_0
.end method

.method public onDragExit(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/daliviews/views/ContainerView;->onDragExit(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/views/IconDropContainer;->canAcceptDrop(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/IconDropContainer;->mAnimScale:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/IconDropContainer;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/launcher/views/IconDropContainer$IconDropAnimatable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/IconDropContainer;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/IconDropContainer$IconDropAnimatable;

    invoke-interface {v0}, Lcom/sec/android/app/launcher/views/IconDropContainer$IconDropAnimatable;->animateOnDragExit()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/views/IconDropContainer;->mAnimScale:Z

    goto :goto_0
.end method

.method public onDrop(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/daliviews/views/ContainerView;->onDrop(Lcom/sec/daliviews/views/NativeViewBase;)V

    sget-object v0, Lcom/sec/android/app/launcher/views/IconDropContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IconDropContainer.onDrop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/IconDropContainer;->mAnimScale:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/IconDropContainer;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/launcher/views/IconDropContainer$IconDropAnimatable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/IconDropContainer;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/IconDropContainer$IconDropAnimatable;

    invoke-interface {v0}, Lcom/sec/android/app/launcher/views/IconDropContainer$IconDropAnimatable;->animateOnDragExit()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/views/IconDropContainer;->mAnimScale:Z

    :cond_0
    return-void
.end method

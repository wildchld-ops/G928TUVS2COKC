.class Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$4;
.super Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;
.source "AppsEditBarPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->setupToAppsButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;II)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;-><init>(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;II)V

    return-void
.end method


# virtual methods
.method protected canAcceptDrop(Lcom/sec/daliviews/views/Item;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsFolderPresenter()Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsFolderPresenter()Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->isCheckFingerPosition()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsFolderPresenter()Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->isFolderItemDragMode()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleOnDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$4;->mButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ContainerView;->setCanAcceptDrop(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$4;->mButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-static {p1, v0}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p2, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setFolderItemDragMode(ZZ)V

    goto :goto_0
.end method

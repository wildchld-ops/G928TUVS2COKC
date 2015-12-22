.class Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;
.super Lcom/sec/daliviews/views/ListAdapter;
.source "FolderItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/data/FolderItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/data/FolderItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-direct {p0, p2}, Lcom/sec/daliviews/views/ListAdapter;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public addItem(Lcom/sec/daliviews/views/Item;Z)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;->changeGridSize(I)V

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getPos()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/daliviews/views/Item;->setPos(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/daliviews/views/ListAdapter;->addItem(Lcom/sec/daliviews/views/Item;Z)V

    return-void
.end method

.method public changeGridSize(I)V
    .locals 14

    iget-object v12, p0, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;
    invoke-static {v12}, Lcom/sec/android/app/launcher/data/FolderItem;->access$700(Lcom/sec/android/app/launcher/data/FolderItem;)Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    move-result-object v12

    # invokes: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getCloseLayout()Lcom/sec/daliviews/layouts/GridLayout;
    invoke-static {v12}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$2800(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v9

    iget-object v12, p0, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;
    invoke-static {v12}, Lcom/sec/android/app/launcher/data/FolderItem;->access$700(Lcom/sec/android/app/launcher/data/FolderItem;)Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getSnapshotLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v11

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080004

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0055

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0051

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0056

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0052

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0054

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0050

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;->getCount()I

    move-result v12

    add-int v8, v12, p1

    const/4 v6, 0x2

    const/4 v10, 0x2

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/sec/daliviews/layouts/GridLayout;->isValidPeer()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v9, v3}, Lcom/sec/daliviews/layouts/GridLayout;->setVerticalSpacing(I)V

    invoke-virtual {v9, v0}, Lcom/sec/daliviews/layouts/GridLayout;->setHorizontalSpacing(I)V

    const/4 v12, 0x4

    if-le v8, v12, :cond_0

    sget-boolean v12, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUsePhilippe:Z

    if-nez v12, :cond_0

    if-eqz v7, :cond_3

    const/4 v10, 0x2

    const/4 v6, 0x3

    invoke-virtual {v9, v4}, Lcom/sec/daliviews/layouts/GridLayout;->setVerticalSpacing(I)V

    invoke-virtual {v9, v1}, Lcom/sec/daliviews/layouts/GridLayout;->setHorizontalSpacing(I)V

    :cond_0
    :goto_0
    invoke-virtual {v9, v10, v6}, Lcom/sec/daliviews/layouts/GridLayout;->setGridSize(II)V

    :cond_1
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/sec/daliviews/layouts/GridLayout;->isValidPeer()Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x4

    if-le v8, v12, :cond_5

    sget-boolean v12, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUsePhilippe:Z

    if-nez v12, :cond_5

    if-eqz v7, :cond_4

    invoke-virtual {v11, v4}, Lcom/sec/daliviews/layouts/GridLayout;->setVerticalSpacing(I)V

    invoke-virtual {v11, v1}, Lcom/sec/daliviews/layouts/GridLayout;->setHorizontalSpacing(I)V

    :goto_1
    invoke-virtual {v11, v10, v6}, Lcom/sec/daliviews/layouts/GridLayout;->setGridSize(II)V

    :cond_2
    sput v6, Lcom/sec/android/app/launcher/data/FolderItem;->mOpenFolderLayoutColumns:I

    return-void

    :cond_3
    const/4 v10, 0x3

    const/4 v6, 0x3

    invoke-virtual {v9, v5}, Lcom/sec/daliviews/layouts/GridLayout;->setVerticalSpacing(I)V

    invoke-virtual {v9, v2}, Lcom/sec/daliviews/layouts/GridLayout;->setHorizontalSpacing(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v11, v5}, Lcom/sec/daliviews/layouts/GridLayout;->setVerticalSpacing(I)V

    invoke-virtual {v11, v2}, Lcom/sec/daliviews/layouts/GridLayout;->setHorizontalSpacing(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v11, v3}, Lcom/sec/daliviews/layouts/GridLayout;->setVerticalSpacing(I)V

    invoke-virtual {v11, v0}, Lcom/sec/daliviews/layouts/GridLayout;->setHorizontalSpacing(I)V

    goto :goto_1
.end method

.method protected onNativeItemDetached(J)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/sec/daliviews/views/ListAdapter;->onNativeItemDetached(J)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;->changeGridSize(I)V

    return-void
.end method

.method public removeItem(Lcom/sec/daliviews/views/Item;Z)Z
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;->changeGridSize(I)V

    invoke-super {p0, p1, p2}, Lcom/sec/daliviews/views/ListAdapter;->removeItem(Lcom/sec/daliviews/views/Item;Z)Z

    move-result v0

    return v0
.end method

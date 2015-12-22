.class public Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;
.super Ljava/lang/Object;
.source "PagePresenter.java"

# interfaces
.implements Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/PagePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/launcher/activities/PagePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/ContainerViewBase;)Z
    .locals 16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mPopulated:Z
    invoke-static {v13}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$1400(Lcom/sec/android/app/launcher/activities/PagePresenter;)Z

    move-result v13

    if-nez v13, :cond_0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$200()Ljava/lang/String;

    move-result-object v13

    const-string v14, "invalidDrop: won\'t accept invalid drop because this page is not yet populated"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    :goto_0
    return v13

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->canAcceptDrop(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v13

    if-nez v13, :cond_1

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$200()Ljava/lang/String;

    move-result-object v13

    const-string v14, "invalidDrop: can\'t accept drop of this item type"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p4

    instance-of v13, v0, Lcom/sec/daliviews/views/PageView;

    if-nez v13, :cond_2

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$200()Ljava/lang/String;

    move-result-object v13

    const-string v14, "invalidDrop: rejecting invalid drop as it doesn\'t come from a drop on a full page"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/sec/android/app/launcher/views/WidgetListItemView;

    if-eqz v13, :cond_3

    move-object/from16 v0, p3

    instance-of v13, v0, Lcom/sec/android/app/launcher/data/WidgetListItem;

    if-eqz v13, :cond_3

    move-object/from16 v12, p3

    check-cast v12, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v11

    instance-of v13, v11, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    check-cast v11, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v12, v11}, Lcom/sec/android/app/launcher/activities/PagePresenter;->buildSurfaceWidgetInfo(Lcom/sec/daliviews/views/Item;Lcom/sec/android/app/launcher/data/WidgetListItem;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)Lcom/sec/android/app/launcher/data/LauncherItem;

    move-result-object v8

    :cond_3
    if-eqz v8, :cond_4

    move-object/from16 p3, v8

    :cond_4
    if-eqz p3, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/data/PageItem;->getDbId()I

    move-result v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/sec/daliviews/views/Item;->setContainerId(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/data/PageItem;->getContainerFilter()I

    move-result v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/sec/daliviews/views/Item;->setContainerType(I)V

    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v13, :cond_5

    move-object/from16 v13, p1

    check-cast v13, Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual/range {p3 .. p3}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/app/launcher/views/HomeItemView;->setTitleAttribute(II)V

    :cond_5
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p3

    instance-of v13, v0, Lcom/sec/android/app/launcher/data/WidgetListItem;

    if-eqz v13, :cond_7

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v13

    invoke-static {v13}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    iget-object v13, v13, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-static {v13, v10}, Lcom/sec/android/app/launcher/utils/Utils;->getInstalledProviders(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v12, p3

    check-cast v12, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v12, v2}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getAppWidgetInfo(Ljava/util/List;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    const/4 v14, 0x0

    # setter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mNeedtoOpenConfigureLater:Z
    invoke-static {v13, v14}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$502(Lcom/sec/android/app/launcher/activities/PagePresenter;Z)Z

    const/4 v7, 0x1

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    instance-of v13, v11, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v13, :cond_9

    iget-object v13, v11, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v13, :cond_6

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$200()Ljava/lang/String;

    move-result-object v13

    const-string v14, "PagePresenter.DragListener::invalidDrop() mNeedtoOpenConfigureLater is set"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    const/4 v14, 0x1

    # setter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mNeedtoOpenConfigureLater:Z
    invoke-static {v13, v14}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$502(Lcom/sec/android/app/launcher/activities/PagePresenter;Z)Z

    :cond_6
    iget v13, v11, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v13, :cond_7

    const/4 v6, 0x1

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p3

    # invokes: Lcom/sec/android/app/launcher/activities/PagePresenter;->addItem(Lcom/sec/daliviews/views/Item;ZZLjava/util/List;)Lcom/sec/daliviews/views/Item;
    invoke-static {v13, v0, v14, v15, v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$1500(Lcom/sec/android/app/launcher/activities/PagePresenter;Lcom/sec/daliviews/views/Item;ZZLjava/util/List;)Lcom/sec/daliviews/views/Item;

    move-result-object v9

    if-eqz v9, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v13, v9}, Lcom/sec/android/app/launcher/activities/PagePresenter;->isResizableWidget(Lcom/sec/daliviews/views/Item;)Z

    move-result v13

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    const/4 v14, 0x1

    # setter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mResizeNewWidgetOnItemAdded:Z
    invoke-static {v13, v14}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$1102(Lcom/sec/android/app/launcher/activities/PagePresenter;Z)Z

    if-nez v7, :cond_8

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    iget-object v13, v13, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResizeFrame()Lcom/sec/android/app/launcher/views/HomeResizeFrame;

    move-result-object v13

    invoke-virtual {v5, v13}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->setResizeFrame(Lcom/sec/daliviews/views/ResizeFrame;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v5, v0, v1}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->resizeStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    :cond_8
    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_9
    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->findAndSetCellPosition(Lcom/sec/daliviews/views/Item;)Z

    move-result v13

    if-nez v13, :cond_a

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$200()Ljava/lang/String;

    move-result-object v13

    const-string v14, "PagePresenter.DragListener::invalidDrop() Unable to find an available cell. Skipping it!"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v12}, Lcom/sec/android/app/launcher/activities/PagePresenter;->copyToPendingAddInfo(Lcom/sec/daliviews/views/Item;Lcom/sec/android/app/launcher/data/WidgetListItem;)V

    new-instance v4, Landroid/content/Intent;

    const-string v13, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v4, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    const/4 v14, 0x1

    invoke-virtual {v13, v4, v14}, Lcom/sec/android/app/launcher/activities/PagePresenter;->startActivityForResultSafely(Landroid/content/Intent;I)V

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragEnd()V

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mNeedtoOpenConfigureLater:Z
    invoke-static {v13}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$500(Lcom/sec/android/app/launcher/activities/PagePresenter;)Z

    move-result v13

    if-eqz v13, :cond_c

    if-eqz v6, :cond_c

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragEnd()V

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method public onDragEnd()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mCurrPageView:Lcom/sec/daliviews/views/PageView;
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$900(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/PageView;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mCurrPageView:Lcom/sec/daliviews/views/PageView;
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$900(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/PageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/views/PageView;->isValidPeer()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mCurrPageView:Lcom/sec/daliviews/views/PageView;
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$900(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/PageView;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/views/PageView;->setPageFlipEnable(Z)V

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mCurrPageView:Lcom/sec/daliviews/views/PageView;
    invoke-static {v4, v6}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$902(Lcom/sec/android/app/launcher/activities/PagePresenter;Lcom/sec/daliviews/views/PageView;)Lcom/sec/daliviews/views/PageView;

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$1200(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/daliviews/layouts/GridLayout;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$1200(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimatePositioning(Z)V

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mDraggedView:Lcom/sec/daliviews/views/NativeViewBase;
    invoke-static {v4, v6}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$1302(Lcom/sec/android/app/launcher/activities/PagePresenter;Lcom/sec/daliviews/views/NativeViewBase;)Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$800(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v4

    if-nez v4, :cond_4

    :cond_3
    return-void

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$800(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ListAdapter;->getCount()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$800(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/daliviews/views/ListAdapter;->getItem(I)Lcom/sec/daliviews/views/Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    if-eqz v2, :cond_6

    instance-of v4, v2, Lcom/sec/daliviews/views/TextureView;

    if-eqz v4, :cond_5

    instance-of v4, v2, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    if-nez v4, :cond_5

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getGlowEffect()Lcom/sec/daliviews/effects/GlowEffect;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/daliviews/effects/GlowEffect;->remove(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_5
    invoke-virtual {v2}, Lcom/sec/daliviews/views/NativeViewBase;->onDragEnd()V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$300(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/PageView;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$100(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$300(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/PageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->enableSilhouette()V

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->makeSilhouetteVisible(Z)V

    :cond_0
    return-void
.end method

.method public onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 0

    return-void
.end method

.method public onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mCurrPageView:Lcom/sec/daliviews/views/PageView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$900(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/PageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mCurrPageView:Lcom/sec/daliviews/views/PageView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$900(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PageView;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mCurrPageView:Lcom/sec/daliviews/views/PageView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$900(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/PageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/PageView;->setPageFlipEnable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mCurrPageView:Lcom/sec/daliviews/views/PageView;
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$902(Lcom/sec/android/app/launcher/activities/PagePresenter;Lcom/sec/daliviews/views/PageView;)Lcom/sec/daliviews/views/PageView;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$1200(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/daliviews/layouts/GridLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$1200(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimatePositioning(Z)V

    :cond_2
    return-void
.end method

.method public onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 28

    const/4 v13, 0x0

    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$300(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/PageView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/daliviews/views/PageView;->getMiniPage()Lcom/sec/daliviews/views/MiniPageView;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    :cond_0
    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->findAndSetCellPosition(Lcom/sec/daliviews/views/Item;)Z

    move-result v23

    if-nez v23, :cond_2

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragEnd()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$300(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/PageView;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4

    :cond_3
    if-eqz v13, :cond_20

    :cond_4
    const/16 v17, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/sec/android/app/launcher/views/WidgetListItemView;

    move/from16 v23, v0

    if-eqz v23, :cond_7

    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/sec/android/app/launcher/data/WidgetListItem;

    move/from16 v23, v0

    if-eqz v23, :cond_7

    const/16 v17, 0x1

    move-object/from16 v22, p3

    check-cast v22, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v21

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    const/16 v16, 0x0

    if-eqz v21, :cond_13

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move/from16 v23, v0

    if-nez v23, :cond_11

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetHost()Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;

    move-result-object v7

    invoke-virtual {v7}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v24, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mUserManager:Landroid/os/UserManager;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$400(Lcom/sec/android/app/launcher/activities/PagePresenter;)Landroid/os/UserManager;

    move-result-object v24

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getUserId()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v24

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v20

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v23

    if-eqz v23, :cond_10

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    if-eqz v23, :cond_f

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragEnd()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->addAppWidgetConfigure(ILandroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v23

    if-eqz v23, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->copyToPendingAddInfo(Lcom/sec/daliviews/views/Item;Lcom/sec/android/app/launcher/data/WidgetListItem;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$100(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v24, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$300(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/PageView;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setDropPage(Lcom/sec/daliviews/views/PageView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    # setter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mNeedtoOpenConfigureLater:Z
    invoke-static/range {v23 .. v24}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$502(Lcom/sec/android/app/launcher/activities/PagePresenter;Z)Z

    goto/16 :goto_0

    :cond_5
    new-instance v8, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;

    invoke-direct {v8}, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;-><init>()V

    new-instance v16, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v8}, Lcom/sec/android/app/launcher/data/AppWidgetItem;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Lcom/sec/android/app/launcher/widget/framework/WidgetBinder;)V

    move-object/from16 v23, v16

    check-cast v23, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->setWidgetId(I)V

    :goto_1
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/LauncherItem;->setIntent(Ljava/lang/String;)V

    :goto_2
    if-eqz v16, :cond_7

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/LauncherItem;->setTitle(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getWidgetSpanX()I

    move-result v23

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/LauncherItem;->setSpanX(I)V

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getWidgetSpanY()I

    move-result v23

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/LauncherItem;->setSpanY(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v23

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/LauncherItem;->setCellX(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v23

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/LauncherItem;->setCellY(I)V

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getUserId()J

    move-result-wide v24

    move-object/from16 v0, v16

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/data/LauncherItem;->setUserId(J)V

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSpanCalculator:Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->getResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    const/16 v23, 0x0

    aget v23, v18, v23

    const/16 v24, 0x1

    aget v24, v18, v24

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/data/LauncherItem;->setMinSpanXY(II)V

    const/16 v23, 0x2

    aget v23, v18, v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    const/16 v23, 0x3

    aget v23, v18, v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    const/16 v23, 0x2

    aget v23, v18, v23

    const/16 v24, 0x3

    aget v24, v18, v24

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/data/LauncherItem;->setMaxSpanXY(II)V

    :cond_6
    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getDataConnector()Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/LauncherItem;->setDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector;)V

    move-object/from16 p3, v16

    invoke-virtual/range {p3 .. p3}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v23

    invoke-virtual/range {p3 .. p3}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v24

    sget v25, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    mul-int v24, v24, v25

    add-int v23, v23, v24

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/Item;->setPos(I)V

    const/16 v23, -0x2

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setContainerId(I)V

    const-string v23, "DragAndDrop"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mark widget list item [id: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getId()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "] for delete!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz p3, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/launcher/data/PageItem;->getDbId()I

    move-result v23

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/Item;->setContainerId(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/launcher/data/PageItem;->getContainerFilter()I

    move-result v23

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/Item;->setContainerType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$300(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/PageView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/daliviews/views/PageView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimateAddingView(Z)V

    invoke-virtual/range {p3 .. p3}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/sec/android/app/launcher/data/HomeItem;

    move/from16 v23, v0

    if-eqz v23, :cond_8

    move-object/from16 v23, p3

    check-cast v23, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/launcher/data/HomeItem;->clearIsClone()V

    move-object/from16 v23, p3

    check-cast v23, Lcom/sec/android/app/launcher/data/HomeItem;

    sget-object v24, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/launcher/data/HomeItem;->setDataSourceType(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V

    move-object/from16 v23, p3

    check-cast v23, Lcom/sec/android/app/launcher/data/HomeItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v24, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$600(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/android/app/launcher/data/DataManager;

    move-result-object v24

    sget-object v25, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/launcher/data/DataManager;->getDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/launcher/data/HomeItem;->setDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector;)V

    :cond_8
    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    move/from16 v23, v0

    if-nez v23, :cond_9

    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    move/from16 v23, v0

    if-eqz v23, :cond_14

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$600(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/android/app/launcher/data/DataManager;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v24, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$700(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/data/DataManager;->insertItem(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/daliviews/views/Item;)Landroid/net/Uri;

    const/16 v23, -0x2

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/Item;->setContainerId(I)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$300(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/PageView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/daliviews/views/PageView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimateAddingView(Z)V

    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/sec/android/app/launcher/views/HomeItemView;

    move/from16 v23, v0

    if-eqz v23, :cond_18

    move-object/from16 v23, p2

    check-cast v23, Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual/range {p3 .. p3}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v24

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/app/launcher/views/HomeItemView;->setTitleAttribute(II)V

    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$100(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v24, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$300(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/PageView;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setDropPage(Lcom/sec/daliviews/views/PageView;)V

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$100(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$100(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v24, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$300(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/PageView;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageIndex(Lcom/sec/daliviews/views/PageView;)I

    move-result v14

    if-eq v11, v14, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v24, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$100(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v24

    # setter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mCurrPageView:Lcom/sec/daliviews/views/PageView;
    invoke-static/range {v23 .. v24}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$902(Lcom/sec/android/app/launcher/activities/PagePresenter;Lcom/sec/daliviews/views/PageView;)Lcom/sec/daliviews/views/PageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mCurrPageView:Lcom/sec/daliviews/views/PageView;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$900(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/PageView;

    move-result-object v23

    if-eqz v23, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mCurrPageView:Lcom/sec/daliviews/views/PageView;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$900(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/PageView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/daliviews/views/PageView;->isValidPeer()Z

    move-result v23

    if-eqz v23, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mCurrPageView:Lcom/sec/daliviews/views/PageView;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$900(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/PageView;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/daliviews/views/PageView;->setPageFlipEnable(Z)V

    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$100(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v23

    const/high16 v24, 0x3e800000    # 0.25f

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v14, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToPage(IF)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->isResizableWidget(Lcom/sec/daliviews/views/Item;)Z

    move-result v23

    if-eqz v23, :cond_1f

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mResizeNewWidgets:Z
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$1000(Lcom/sec/android/app/launcher/activities/PagePresenter;)Z

    move-result v23

    if-eqz v23, :cond_1f

    :cond_d
    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    move/from16 v23, v0

    if-nez v23, :cond_e

    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    move/from16 v23, v0

    if-eqz v23, :cond_1f

    :cond_e
    if-nez v13, :cond_1f

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$200()Ljava/lang/String;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Dropped: widget with dbid "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p3 .. p3}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v17, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    # setter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mResizeNewWidgetOnItemAdded:Z
    invoke-static/range {v23 .. v24}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$1102(Lcom/sec/android/app/launcher/activities/PagePresenter;Z)Z

    :goto_6
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/sec/daliviews/views/TextureView;

    move/from16 v23, v0

    if-eqz v23, :cond_1

    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    move/from16 v23, v0

    if-nez v23, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getGlowEffect()Lcom/sec/daliviews/effects/GlowEffect;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/effects/GlowEffect;->remove(Lcom/sec/daliviews/views/NativeViewBase;)V

    goto/16 :goto_0

    :cond_f
    new-instance v8, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;

    invoke-direct {v8}, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;-><init>()V

    new-instance v16, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v8}, Lcom/sec/android/app/launcher/data/AppWidgetItem;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Lcom/sec/android/app/launcher/widget/framework/WidgetBinder;)V

    move-object/from16 v23, v16

    check-cast v23, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->setWidgetId(I)V

    goto/16 :goto_1

    :cond_10
    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    const/4 v6, 0x1

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$200()Ljava/lang/String;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Delete Widget due to user request(drop) - deleteAppWidgetId : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_11
    move-object/from16 v19, v21

    check-cast v19, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->canAddSurfaceWidget(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)Z

    move-result v23

    if-nez v23, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    new-instance v24, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener$1;-><init>(Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;)V

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragEnd()V

    goto/16 :goto_0

    :cond_12
    new-instance v16, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;-><init>(Landroid/content/Context;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)V

    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v23, "instance"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v23, "themename"

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getThemeName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/LauncherItem;->setIntent(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_13
    if-eqz v9, :cond_7

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragEnd()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->copyToPendingAddInfo(Lcom/sec/daliviews/views/Item;Lcom/sec/android/app/launcher/data/WidgetListItem;)V

    new-instance v10, Landroid/content/Intent;

    const-string v23, "android.intent.action.CREATE_SHORTCUT"

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v10, v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->startActivityForResultSafely(Landroid/content/Intent;I)V

    const/16 v23, -0x2

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setContainerId(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$100(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v24, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$300(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/PageView;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setDropPage(Lcom/sec/daliviews/views/PageView;)V

    const-string v23, "DragAndDrop"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mark widget list item [id: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getId()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "] for delete!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$800(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v23

    if-eqz v23, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$800(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ListAdapter;->addItem(Lcom/sec/daliviews/views/Item;)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$600(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/android/app/launcher/data/DataManager;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v24, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$700(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p3

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/launcher/data/DataManager;->insertItem(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/daliviews/views/Item;Z)Landroid/net/Uri;

    goto/16 :goto_3

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$800(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v23

    if-eqz v23, :cond_17

    if-nez v6, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$800(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ListAdapter;->addItem(Lcom/sec/daliviews/views/Item;)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$600(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/android/app/launcher/data/DataManager;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v24, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$700(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/data/DataManager;->updateItem(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/daliviews/views/Item;)I

    goto/16 :goto_3

    :cond_18
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;

    move/from16 v23, v0

    if-eqz v23, :cond_a

    move-object/from16 v23, p2

    check-cast v23, Lcom/sec/android/app/launcher/views/HomeFolderView;

    invoke-virtual/range {p3 .. p3}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/launcher/views/HomeFolderView;->setTitleAttribute(I)V

    goto/16 :goto_4

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mCurrPageView:Lcom/sec/daliviews/views/PageView;
    invoke-static/range {v23 .. v24}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$902(Lcom/sec/android/app/launcher/activities/PagePresenter;Lcom/sec/daliviews/views/PageView;)Lcom/sec/daliviews/views/PageView;

    goto/16 :goto_5

    :cond_1a
    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    move/from16 v23, v0

    if-nez v23, :cond_1b

    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    move/from16 v23, v0

    if-eqz v23, :cond_1d

    :cond_1b
    const/16 v21, 0x0

    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    move/from16 v23, v0

    if-eqz v23, :cond_1e

    move-object/from16 v23, p3

    check-cast v23, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v21

    :cond_1c
    :goto_7
    if-eqz v21, :cond_1d

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSpanCalculator:Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->getResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    const/16 v23, 0x0

    aget v23, v18, v23

    const/16 v24, 0x1

    aget v24, v18, v24

    move-object/from16 v0, p3

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/views/Item;->setMinSpanXY(II)V

    const/16 v23, 0x2

    aget v23, v18, v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1d

    const/16 v23, 0x3

    aget v23, v18, v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1d

    const/16 v23, 0x2

    aget v23, v18, v23

    const/16 v24, 0x3

    aget v24, v18, v24

    move-object/from16 v0, p3

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/views/Item;->setMaxSpanXY(II)V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResizeFrame()Lcom/sec/android/app/launcher/views/HomeResizeFrame;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->setResizeFrame(Lcom/sec/daliviews/views/ResizeFrame;)V

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v12, v0, v1}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->resizeStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    goto/16 :goto_6

    :cond_1e
    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    move/from16 v23, v0

    if-eqz v23, :cond_1c

    move-object/from16 v23, p3

    check-cast v23, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getWidgetInfo()Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v21

    goto/16 :goto_7

    :cond_1f
    invoke-virtual {v12}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragEnd()V

    goto/16 :goto_6

    :cond_20
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/daliviews/views/NativeViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v23

    if-eqz v23, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/daliviews/views/NativeViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v24, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$300(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/PageView;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$100(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v24, v0

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$300(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/PageView;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setDropPage(Lcom/sec/daliviews/views/PageView;)V

    goto/16 :goto_0
.end method

.method public onResizeStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$1200(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/daliviews/layouts/GridLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$1200(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimatePositioning(Z)V

    :cond_0
    return-void
.end method

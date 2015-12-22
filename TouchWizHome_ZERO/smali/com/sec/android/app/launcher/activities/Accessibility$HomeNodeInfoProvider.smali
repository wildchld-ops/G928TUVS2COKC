.class Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "Accessibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/Accessibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeNodeInfoProvider"
.end annotation


# instance fields
.field mRoot:Landroid/view/View;

.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/Accessibility;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/launcher/activities/Accessibility;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->mRoot:Landroid/view/View;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->mRoot:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 26

    const v2, 0x7fffffff

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const/4 v2, -0x1

    move/from16 v0, p1

    if-eq v2, v0, :cond_2

    if-nez p1, :cond_a

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->mRoot:Landroid/view/View;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->mRoot:Landroid/view/View;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/launcher/activities/Accessibility;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->mRoot:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentFragmentId()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v13

    const/4 v12, 0x0

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getActiveFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v12

    :cond_3
    if-eqz v12, :cond_4

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->isFolderOpened()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    # getter for: Lcom/sec/android/app/launcher/activities/Accessibility;->childParentMap:Landroid/util/SparseIntArray;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/Accessibility;->access$500(Lcom/sec/android/app/launcher/activities/Accessibility;)Landroid/util/SparseIntArray;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->mRoot:Landroid/view/View;

    move/from16 v0, p1

    invoke-static {v2, v4, v0, v3, v5}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList;->addItemToNodeInfo(Ljava/lang/Object;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/util/SparseIntArray;Landroid/view/View;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v14}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentMode()Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v2, v3, :cond_5

    invoke-virtual {v14}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    # getter for: Lcom/sec/android/app/launcher/activities/Accessibility;->childParentMap:Landroid/util/SparseIntArray;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/Accessibility;->access$500(Lcom/sec/android/app/launcher/activities/Accessibility;)Landroid/util/SparseIntArray;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->mRoot:Landroid/view/View;

    move/from16 v0, p1

    invoke-static {v2, v4, v0, v3, v5}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList;->addItemToNodeInfo(Ljava/lang/Object;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/util/SparseIntArray;Landroid/view/View;)V

    invoke-virtual {v14}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageIndicator()Lcom/sec/daliviews/views/PageIndicator;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    # getter for: Lcom/sec/android/app/launcher/activities/Accessibility;->childParentMap:Landroid/util/SparseIntArray;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/Accessibility;->access$500(Lcom/sec/android/app/launcher/activities/Accessibility;)Landroid/util/SparseIntArray;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->mRoot:Landroid/view/View;

    move/from16 v0, p1

    invoke-static {v2, v4, v0, v3, v5}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList;->addItemToNodeInfo(Ljava/lang/Object;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/util/SparseIntArray;Landroid/view/View;)V

    invoke-virtual {v14}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v14}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    # getter for: Lcom/sec/android/app/launcher/activities/Accessibility;->childParentMap:Landroid/util/SparseIntArray;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/Accessibility;->access$500(Lcom/sec/android/app/launcher/activities/Accessibility;)Landroid/util/SparseIntArray;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->mRoot:Landroid/view/View;

    move/from16 v0, p1

    invoke-static {v2, v4, v0, v3, v5}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList;->addItemToNodeInfo(Ljava/lang/Object;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/util/SparseIntArray;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v14}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getEditBarPresenter()Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    # getter for: Lcom/sec/android/app/launcher/activities/Accessibility;->childParentMap:Landroid/util/SparseIntArray;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/Accessibility;->access$500(Lcom/sec/android/app/launcher/activities/Accessibility;)Landroid/util/SparseIntArray;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->mRoot:Landroid/view/View;

    move/from16 v0, p1

    invoke-static {v2, v4, v0, v3, v5}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList;->addItemToNodeInfo(Ljava/lang/Object;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/util/SparseIntArray;Landroid/view/View;)V

    invoke-virtual {v14}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageIndicator()Lcom/sec/daliviews/views/PageIndicator;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    # getter for: Lcom/sec/android/app/launcher/activities/Accessibility;->childParentMap:Landroid/util/SparseIntArray;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/Accessibility;->access$500(Lcom/sec/android/app/launcher/activities/Accessibility;)Landroid/util/SparseIntArray;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->mRoot:Landroid/view/View;

    move/from16 v0, p1

    invoke-static {v2, v4, v0, v3, v5}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList;->addItemToNodeInfo(Ljava/lang/Object;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/util/SparseIntArray;Landroid/view/View;)V

    invoke-virtual {v14}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPagePresenters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_6
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/PageView;->isOnScreen()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    # getter for: Lcom/sec/android/app/launcher/activities/Accessibility;->childParentMap:Landroid/util/SparseIntArray;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/Accessibility;->access$500(Lcom/sec/android/app/launcher/activities/Accessibility;)Landroid/util/SparseIntArray;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->mRoot:Landroid/view/View;

    move/from16 v0, p1

    invoke-static {v2, v4, v0, v3, v5}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList;->addItemToNodeInfo(Ljava/lang/Object;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/util/SparseIntArray;Landroid/view/View;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v14}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getOptionTrayPresenter()Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getMaxOptions()I

    move-result v17

    const/4 v15, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v15, v0, :cond_0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getView(I)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    # getter for: Lcom/sec/android/app/launcher/activities/Accessibility;->childParentMap:Landroid/util/SparseIntArray;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/Accessibility;->access$500(Lcom/sec/android/app/launcher/activities/Accessibility;)Landroid/util/SparseIntArray;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->mRoot:Landroid/view/View;

    move/from16 v0, p1

    invoke-static {v2, v4, v0, v3, v5}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList;->addItemToNodeInfo(Ljava/lang/Object;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/util/SparseIntArray;Landroid/view/View;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAppsFragment()Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsFolderPresenter()Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->isFolderOpened()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getActiveFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    # getter for: Lcom/sec/android/app/launcher/activities/Accessibility;->childParentMap:Landroid/util/SparseIntArray;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/Accessibility;->access$500(Lcom/sec/android/app/launcher/activities/Accessibility;)Landroid/util/SparseIntArray;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->mRoot:Landroid/view/View;

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-static {v0, v4, v1, v2, v3}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList;->addItemToNodeInfo(Ljava/lang/Object;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/util/SparseIntArray;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->addUpdateContentDescription()V

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getPagedAdapterView()Lcom/sec/daliviews/views/PagedAdapterView;

    move-result-object v21

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getCurrentTopButton()Lcom/sec/daliviews/views/TextView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    # getter for: Lcom/sec/android/app/launcher/activities/Accessibility;->childParentMap:Landroid/util/SparseIntArray;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/Accessibility;->access$500(Lcom/sec/android/app/launcher/activities/Accessibility;)Landroid/util/SparseIntArray;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->mRoot:Landroid/view/View;

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-static {v0, v4, v1, v2, v3}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList;->addItemToNodeInfo(Ljava/lang/Object;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/util/SparseIntArray;Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    # getter for: Lcom/sec/android/app/launcher/activities/Accessibility;->childParentMap:Landroid/util/SparseIntArray;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/Accessibility;->access$500(Lcom/sec/android/app/launcher/activities/Accessibility;)Landroid/util/SparseIntArray;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->mRoot:Landroid/view/View;

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v4, v1, v2, v3}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList;->addItemToNodeInfo(Ljava/lang/Object;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/util/SparseIntArray;Landroid/view/View;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetsFragment()Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getWidgetListFolderItemView()Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getWidgetListFolderItemView()Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->getFolderView()Lcom/sec/android/app/launcher/views/WidgetFolderView;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getWidgetListFolderItemView()Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->getFolderView()Lcom/sec/android/app/launcher/views/WidgetFolderView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getWidgetListFolderItemView()Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->getFolderView()Lcom/sec/android/app/launcher/views/WidgetFolderView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getOpenFolderView()Lcom/sec/android/app/launcher/views/OpenFolderView;

    move-result-object v19

    check-cast v19, Lcom/sec/android/app/launcher/views/WidgetOpenFolderView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    # getter for: Lcom/sec/android/app/launcher/activities/Accessibility;->childParentMap:Landroid/util/SparseIntArray;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/Accessibility;->access$500(Lcom/sec/android/app/launcher/activities/Accessibility;)Landroid/util/SparseIntArray;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->mRoot:Landroid/view/View;

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-static {v0, v4, v1, v2, v3}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList;->addItemToNodeInfo(Ljava/lang/Object;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/util/SparseIntArray;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getItemsAtPage(I)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    # getter for: Lcom/sec/android/app/launcher/activities/Accessibility;->childParentMap:Landroid/util/SparseIntArray;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/Accessibility;->access$500(Lcom/sec/android/app/launcher/activities/Accessibility;)Landroid/util/SparseIntArray;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->mRoot:Landroid/view/View;

    move/from16 v0, p1

    invoke-static {v2, v4, v0, v3, v5}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList;->addItemListToNodeInfo(Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/util/SparseIntArray;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_a
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityIdGenerator;->getObject(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_b

    invoke-super/range {p0 .. p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    goto/16 :goto_0

    :cond_b
    instance-of v2, v8, Landroid/view/View;

    if-eqz v2, :cond_c

    move-object/from16 v24, v8

    check-cast v24, Landroid/view/View;

    invoke-static/range {v24 .. v24}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    # getter for: Lcom/sec/android/app/launcher/activities/Accessibility;->childParentMap:Landroid/util/SparseIntArray;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/Accessibility;->access$500(Lcom/sec/android/app/launcher/activities/Accessibility;)Landroid/util/SparseIntArray;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->mRoot:Landroid/view/View;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    goto/16 :goto_0

    :cond_c
    instance-of v2, v8, Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->mRoot:Landroid/view/View;

    move/from16 v0, p1

    invoke-static {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->mRoot:Landroid/view/View;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/launcher/activities/Accessibility;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    move-object/from16 v24, v8

    check-cast v24, Lcom/sec/daliviews/views/NativeViewBase;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    # getter for: Lcom/sec/android/app/launcher/activities/Accessibility;->childParentMap:Landroid/util/SparseIntArray;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/Accessibility;->access$500(Lcom/sec/android/app/launcher/activities/Accessibility;)Landroid/util/SparseIntArray;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->mRoot:Landroid/view/View;

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/sec/daliviews/views/NativeViewBase;->getNodeInfo(Landroid/util/SparseIntArray;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    move-object/from16 v0, v24

    instance-of v2, v0, Lcom/sec/daliviews/views/AdapterView;

    if-eqz v2, :cond_0

    move-object/from16 v2, v24

    check-cast v2, Lcom/sec/daliviews/views/AdapterView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/AdapterView;->getAdapter()Lcom/sec/daliviews/views/Adapter;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v2, v24

    check-cast v2, Lcom/sec/daliviews/views/AdapterView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/AdapterView;->getAdapter()Lcom/sec/daliviews/views/Adapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Adapter;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {v24 .. v24}, Lcom/sec/daliviews/views/NativeViewBase;->getScreenBoundingRect()Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    # getter for: Lcom/sec/android/app/launcher/activities/Accessibility;->childParentMap:Landroid/util/SparseIntArray;
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/Accessibility;->access$500(Lcom/sec/android/app/launcher/activities/Accessibility;)Landroid/util/SparseIntArray;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->mRoot:Landroid/view/View;

    move/from16 v5, p1

    # invokes: Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList;->addItemListToNodeInfo(Ljava/util/List;Landroid/graphics/Rect;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/util/SparseIntArray;Landroid/view/View;)V
    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList;->access$600(Ljava/util/List;Landroid/graphics/Rect;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/util/SparseIntArray;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_d
    invoke-super/range {p0 .. p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    # getter for: Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/Accessibility;->access$000(Lcom/sec/android/app/launcher/activities/Accessibility;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Find focus called"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->this$0:Lcom/sec/android/app/launcher/activities/Accessibility;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/Accessibility;->getFocusedView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityIdGenerator;->getOrGenerateId(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

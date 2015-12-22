.class Lcom/sec/android/app/launcher/activities/HomePresenter$10;
.super Ljava/lang/Object;
.source "HomePresenter.java"

# interfaces
.implements Lcom/sec/daliviews/views/NativeViewBase$OnLongPressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$10;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Lcom/sec/daliviews/views/NativeViewBase;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$10;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v2

    sget-object v4, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$10;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/HomePresenter;->performHomeMenu()V
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4800(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    move v2, v3

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$10;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v2

    sget-object v4, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$10;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$600(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v2

    sget-object v4, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-eq v2, v4, :cond_2

    instance-of v2, p1, Lcom/sec/daliviews/views/PageView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$10;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$10;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v4

    move-object v2, p1

    check-cast v2, Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v4, v2}, Lcom/sec/daliviews/layouts/PageLayout;->getPageNumber(Lcom/sec/daliviews/views/PageView;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$10;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    if-ne v0, v1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$10;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/HomePresenter;->getNumberWorkSpace()I
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4900(Lcom/sec/android/app/launcher/activities/HomePresenter;)I

    move-result v2

    if-le v2, v3, :cond_2

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, p2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$10;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2300(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/views/PageViewContainer;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$10;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2300(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/views/PageViewContainer;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/PageViewContainer;->setChildrenSensitive(Z)V

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

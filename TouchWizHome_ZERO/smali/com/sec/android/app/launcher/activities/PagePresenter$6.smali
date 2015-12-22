.class Lcom/sec/android/app/launcher/activities/PagePresenter$6;
.super Ljava/lang/Object;
.source "PagePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/PagePresenter;->updatePageLayout(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

.field final synthetic val$columnSize:I

.field final synthetic val$layout:Lcom/sec/daliviews/layouts/LayoutBase;

.field final synthetic val$rowSize:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/PagePresenter;Lcom/sec/daliviews/layouts/LayoutBase;II)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$6;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$6;->val$layout:Lcom/sec/daliviews/layouts/LayoutBase;

    iput p3, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$6;->val$rowSize:I

    iput p4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$6;->val$columnSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$6;->val$layout:Lcom/sec/daliviews/layouts/LayoutBase;

    instance-of v1, v1, Lcom/sec/daliviews/layouts/GridLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$6;->val$layout:Lcom/sec/daliviews/layouts/LayoutBase;

    check-cast v1, Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/GridLayout;->isVerticalScroll()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$6;->val$layout:Lcom/sec/daliviews/layouts/LayoutBase;

    check-cast v0, Lcom/sec/daliviews/layouts/GridLayout;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$6;->val$rowSize:I

    iget v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$6;->val$columnSize:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/layouts/GridLayout;->setGridSize(II)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$6;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    iget-object v1, v1, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomePageItem;->getCellSizeWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$6;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    iget-object v2, v2, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/HomePageItem;->getCellSizeHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/layouts/GridLayout;->setCellSize(II)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$6;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    iget-object v1, v1, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomePageItem;->getCellSpacingHorizontal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/layouts/GridLayout;->setHorizontalSpacing(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$6;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    iget-object v1, v1, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomePageItem;->getCellSpacingVertical()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/layouts/GridLayout;->setVerticalSpacing(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$6;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/PagePresenter;->setDefaultMode()V
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$1600(Lcom/sec/android/app/launcher/activities/PagePresenter;)V

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/GridLayout;->layoutViews()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$6;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$100(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageEditMode()Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$6;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$300(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/PageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PageView;->showGrid()V

    :cond_1
    return-void
.end method

.class Lcom/sec/android/app/launcher/activities/WidgetsPresenter$WidgetsPagedAdapterViewListener;
.super Ljava/lang/Object;
.source "WidgetsPresenter.java"

# interfaces
.implements Lcom/sec/daliviews/views/PagedAdapterView$PagedAdapterViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/WidgetsPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetsPagedAdapterViewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$WidgetsPagedAdapterViewListener;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;Lcom/sec/android/app/launcher/activities/WidgetsPresenter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$WidgetsPagedAdapterViewListener;-><init>(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)V

    return-void
.end method


# virtual methods
.method public onCreatePages(I)[J
    .locals 8

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    if-gt p1, v6, :cond_0

    if-gez p1, :cond_2

    :cond_0
    move-object v3, v5

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    :try_start_0
    new-array v3, p1, [J

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v4

    const v6, 0x7f030060

    invoke-virtual {v4, v6}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/views/WidgetPageView;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/WidgetPageView;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/views/WidgetPageView;

    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$WidgetsPagedAdapterViewListener;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchBar:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$500(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sec/android/app/launcher/views/WidgetPageView;->setWidgetSearchBar(Lcom/sec/android/app/launcher/activities/WidgetSearchBar;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$WidgetsPagedAdapterViewListener;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$2200(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sec/android/app/launcher/views/WidgetPageView;->setOnItemClickListener(Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$WidgetsPagedAdapterViewListener;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$2200(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sec/android/app/launcher/views/WidgetPageView;->setOnItemLongClickListener(Lcom/sec/daliviews/views/AdapterView$OnItemLongClickListener;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$WidgetsPagedAdapterViewListener;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$2200(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sec/android/app/launcher/views/WidgetPageView;->setOnItemTouchListener(Lcom/sec/daliviews/views/AdapterView$OnItemTouchListener;)V

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/WidgetPageView;->getPeer()J

    move-result-wide v6

    aput-wide v6, v3, v1
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    :goto_2
    move-object v3, v5

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public onItemUpdated(Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onItemsUpdated()V
    .locals 0

    return-void
.end method

.method public updatePageType([II)V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$WidgetsPagedAdapterViewListener;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$300(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/daliviews/layouts/PageLayout;->getPage(I)Lcom/sec/daliviews/views/PageView;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/FixedPageView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$WidgetsPagedAdapterViewListener;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageIndicatorImage:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$2300(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/FixedPageView;->setPageIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.class Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$WidgetsPagedAdapterViewListener;
.super Ljava/lang/Object;
.source "ZeroPageListPresenter.java"

# interfaces
.implements Lcom/sec/daliviews/views/PagedAdapterView$PagedAdapterViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetsPagedAdapterViewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$WidgetsPagedAdapterViewListener;->this$0:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$WidgetsPagedAdapterViewListener;-><init>(Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;)V

    return-void
.end method


# virtual methods
.method public onCreatePages(I)[J
    .locals 8

    :try_start_0
    new-array v3, p1, [J

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v4

    const v5, 0x7f030066

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/views/ZeroPageListView;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/ZeroPageListView;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/views/ZeroPageListView;

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$WidgetsPagedAdapterViewListener;->this$0:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->access$500(Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;)Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/android/app/launcher/views/ZeroPageListView;->setOnItemClickListener(Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;)V

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/ZeroPageListView;->getPeer()J

    move-result-wide v6

    aput-wide v6, v3, v1
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v3, 0x0

    :cond_1
    return-object v3
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

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$WidgetsPagedAdapterViewListener;->this$0:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->access$600(Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/daliviews/layouts/PageLayout;->getPage(I)Lcom/sec/daliviews/views/PageView;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/FixedPageView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$WidgetsPagedAdapterViewListener;->this$0:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageIndicatorImage:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->access$700(Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/FixedPageView;->setPageIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

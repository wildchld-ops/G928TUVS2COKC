.class Lcom/sec/android/app/launcher/activities/WidgetsPresenter$4;
.super Ljava/lang/Object;
.source "WidgetsPresenter.java"

# interfaces
.implements Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/WidgetsPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPrevPage:I

.field private mPrevQueryLength:I

.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$4;->mPrevPage:I

    iput v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$4;->mPrevQueryLength:I

    return-void
.end method


# virtual methods
.method public onOvershootNotification(F)V
    .locals 0

    return-void
.end method

.method public onPageChanged(I)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$400(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$300(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setKeypadPageChanged(Lcom/sec/daliviews/layouts/PageLayout;I)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchBar:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$500(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->getSearchQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$4;->mPrevPage:I

    if-eq v2, p1, :cond_0

    iget v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$4;->mPrevQueryLength:I

    if-eq v2, v1, :cond_1

    :cond_0
    iget v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$4;->mPrevPage:I

    if-ne v2, p1, :cond_2

    iget v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$4;->mPrevQueryLength:I

    if-ne v2, v1, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchBar:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$500(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->getSearchView()Lcom/sec/android/app/launcher/views/WidgetSearchView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchBar:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$500(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->clearSearchViewFocus()V

    :cond_2
    iget v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$4;->mPrevPage:I

    if-eq v2, p1, :cond_3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibility()Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$300(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v3

    invoke-virtual {v0, v2, p1, p1, v3}, Lcom/sec/android/app/launcher/activities/Accessibility;->genScroll(Lcom/sec/daliviews/views/NativeViewBase;III)V

    :cond_3
    iput p1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$4;->mPrevPage:I

    iput v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$4;->mPrevQueryLength:I

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->updateFromPageChange(I)V
    invoke-static {v2, p1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$600(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;I)V

    # setter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSavedCurrentPage:I
    invoke-static {p1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$702(I)I

    return-void
.end method

.method public onPageVisibilityChanged(II)V
    .locals 0

    return-void
.end method

.method public onScrollEnd()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchBar:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$500(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->setIsScrolling(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPopupMenu:Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$800(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->setOptionsButtonEnabled(Z)V

    return-void
.end method

.method public onScrollPreStart()V
    .locals 0

    return-void
.end method

.method public onScrollStart()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchBar:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$500(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->setIsScrolling(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPopupMenu:Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$800(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->setOptionsButtonEnabled(Z)V

    return-void
.end method

.method public onUpdatePageIndication(I)V
    .locals 0

    # setter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSavedCurrentPage:I
    invoke-static {p1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$702(I)I

    return-void
.end method

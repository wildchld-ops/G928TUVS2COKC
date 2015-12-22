.class Lcom/sec/android/app/launcher/views/WidgetFolderView$4;
.super Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;
.source "WidgetFolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/WidgetFolderView;->showOpenWidgetFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/views/WidgetFolderView;

.field final synthetic val$openFolderLayout:Lcom/sec/daliviews/layouts/GridLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/WidgetFolderView;Lcom/sec/daliviews/layouts/GridLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView$4;->this$0:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    iput-object p2, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView$4;->val$openFolderLayout:Lcom/sec/daliviews/layouts/GridLayout;

    invoke-direct {p0}, Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public handleUIAnimEvent(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView$4;->this$0:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView$4;->val$openFolderLayout:Lcom/sec/daliviews/layouts/GridLayout;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView$4;->this$0:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    # getter for: Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOriginalBufferSize:I
    invoke-static {v1}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->access$000(Lcom/sec/android/app/launcher/views/WidgetFolderView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/layouts/GridLayout;->setBufferSize(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView$4;->this$0:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    iget-object v0, v0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetsFragment()Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ContainerViewBase;->setSensitive(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView$4;->this$0:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    iget-object v0, v0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetsFragment()Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/layouts/PageLayout;->setScrolling(Z)V

    :cond_1
    return-void
.end method

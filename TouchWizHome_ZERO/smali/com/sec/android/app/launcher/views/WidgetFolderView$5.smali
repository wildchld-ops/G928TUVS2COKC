.class Lcom/sec/android/app/launcher/views/WidgetFolderView$5;
.super Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;
.source "WidgetFolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/WidgetFolderView;->showClosedFolder(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/views/WidgetFolderView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/WidgetFolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView$5;->this$0:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-direct {p0}, Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public handleUIAnimEvent(I)V
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView$5;->this$0:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    iget-object v0, v0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setWidgetOpenFolderView(Lcom/sec/android/app/launcher/views/WidgetFolderView;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView$5;->this$0:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    # invokes: Lcom/sec/android/app/launcher/views/WidgetFolderView;->folderExtra()Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->access$100(Lcom/sec/android/app/launcher/views/WidgetFolderView;)Lcom/sec/daliviews/views/ContainerView;

    :cond_0
    return-void
.end method

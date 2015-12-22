.class Lcom/sec/android/app/launcher/activities/FolderPanelManager$1;
.super Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;
.source "FolderPanelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/FolderPanelManager;->startSlideInAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/FolderPanelManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/FolderPanelManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager$1;->this$0:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    invoke-direct {p0}, Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public handleUIAnimEvent(I)V
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager$1;->this$0:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    const/4 v1, 0x0

    # invokes: Lcom/sec/android/app/launcher/activities/FolderPanelManager;->setOpacityPanelViews(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->access$000(Lcom/sec/android/app/launcher/activities/FolderPanelManager;Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager$1;->this$0:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    # getter for: Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelRootView:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->access$100(Lcom/sec/android/app/launcher/activities/FolderPanelManager;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    :cond_0
    return-void
.end method

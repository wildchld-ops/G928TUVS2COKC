.class Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator$1;
.super Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;
.source "FolderItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->openFolderWithAnimation(ZLcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;

.field final synthetic val$openFolder:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;Lcom/sec/android/app/launcher/views/HomeOpenFolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator$1;->this$2:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;

    iput-object p2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator$1;->val$openFolder:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    invoke-direct {p0}, Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public handleUIAnimEvent(I)V
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator$1;->this$2:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;

    # getter for: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->mAnimHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->access$1900(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator$1$1;-><init>(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator$1;->val$openFolder:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setUninstallBadge()V

    goto :goto_0
.end method

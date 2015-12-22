.class Lcom/sec/android/app/launcher/activities/HomePresenter$22;
.super Ljava/lang/Object;
.source "HomePresenter.java"

# interfaces
.implements Lcom/sec/daliviews/views/ContainerViewBase$OnInterceptTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;->onFolderOpening(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$22;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$22;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2900(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setOnInterceptTouchListener(Lcom/sec/daliviews/views/ContainerViewBase$OnInterceptTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$22;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$6000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$22;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$6000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->closeOpenFolder()Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

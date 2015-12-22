.class Lcom/sec/android/app/launcher/activities/AppsPresenter$31;
.super Ljava/lang/Object;
.source "AppsPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/AppsPresenter;->onItemLoadCompleted(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$31;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$31;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/AppsPresenter;->attachRootView()V
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$6900(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$31;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/AppsPresenter;->attachAdapterIfNeeded()V
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$7000(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$31;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$4000(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$31;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$4000(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->checkEmptyFolder()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$31;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/AppsPresenter;->setupShadow()V
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$7100(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    return-void
.end method

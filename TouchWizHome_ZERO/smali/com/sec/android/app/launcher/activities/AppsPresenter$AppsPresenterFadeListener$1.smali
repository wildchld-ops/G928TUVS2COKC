.class Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterFadeListener$1;
.super Ljava/lang/Object;
.source "AppsPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterFadeListener;->onFadeOutComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterFadeListener;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterFadeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterFadeListener$1;->this$1:Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterFadeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterFadeListener$1;->this$1:Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterFadeListener;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->storeCurrentPage()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterFadeListener$1;->this$1:Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterFadeListener;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/AppsPresenter;->detachRootViewIfNeeded()V
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$3600(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    return-void
.end method

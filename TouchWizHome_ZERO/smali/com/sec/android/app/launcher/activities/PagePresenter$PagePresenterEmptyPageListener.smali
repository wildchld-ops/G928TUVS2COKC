.class Lcom/sec/android/app/launcher/activities/PagePresenter$PagePresenterEmptyPageListener;
.super Ljava/lang/Object;
.source "PagePresenter.java"

# interfaces
.implements Lcom/sec/daliviews/views/PageView$OnEmptyPageDropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/PagePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagePresenterEmptyPageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/launcher/activities/PagePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$PagePresenterEmptyPageListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/launcher/activities/PagePresenter;Lcom/sec/android/app/launcher/activities/PagePresenter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/PagePresenter$PagePresenterEmptyPageListener;-><init>(Lcom/sec/android/app/launcher/activities/PagePresenter;)V

    return-void
.end method


# virtual methods
.method public onItemAddedToEmptyPage()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$PagePresenterEmptyPageListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getEmptyPageTextState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$PagePresenterEmptyPageListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->setEmptyPageTextState(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$PagePresenterEmptyPageListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$100(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->clearEmptyPageTexts()V

    :cond_0
    return-void
.end method

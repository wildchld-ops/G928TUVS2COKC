.class Lcom/sec/android/app/launcher/activities/PagePresenter$1;
.super Ljava/lang/Object;
.source "PagePresenter.java"

# interfaces
.implements Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/PagePresenter;->setupDefaultPageIcon(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/PagePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$1;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$1;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    iget-object v1, v1, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomePageItem;->getPageOrder()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$1;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$100(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setDefaultHome(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$1;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$100(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePageBackgrounds()V

    const/4 v1, 0x1

    return v1
.end method

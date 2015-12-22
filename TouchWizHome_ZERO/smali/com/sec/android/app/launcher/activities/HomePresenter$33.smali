.class Lcom/sec/android/app/launcher/activities/HomePresenter$33;
.super Ljava/lang/Object;
.source "HomePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;->updateEditMode()V
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$33;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$33;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPagePresenter()Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$33;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$600(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$33;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$3900(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->setVisibilityAnimated(I)V

    :cond_0
    return-void
.end method

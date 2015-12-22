.class Lcom/sec/android/app/launcher/activities/HomePresenter$4;
.super Ljava/lang/Object;
.source "HomePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;->onResume()V
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    const-string v1, "HomePresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HP onResume current "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroActivityLaunched:Z
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$3700(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    if-eqz v1, :cond_0

    const-string v1, "HomePresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HP onResume currentPage is zero so move to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->NEXT_INDEX_OF_ZEROPAGE:I
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$3800(Lcom/sec/android/app/launcher/activities/HomePresenter;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->NEXT_INDEX_OF_ZEROPAGE:I
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$3800(Lcom/sec/android/app/launcher/activities/HomePresenter;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToPage(IF)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroActivityLaunched:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$3702(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z

    return-void
.end method

.class Lcom/sec/android/app/launcher/activities/HomePresenter$6;
.super Ljava/lang/Object;
.source "HomePresenter.java"

# interfaces
.implements Lcom/sec/daliviews/layouts/PageLayout$OnMiniPageShouldUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;->setupViewsExtra()V
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$6;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMiniPageShouldUpdate()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$6;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$6;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->layoutMiniPages()V

    :cond_0
    return-void
.end method

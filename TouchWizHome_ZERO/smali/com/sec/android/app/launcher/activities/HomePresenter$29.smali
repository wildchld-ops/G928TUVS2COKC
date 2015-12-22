.class Lcom/sec/android/app/launcher/activities/HomePresenter$29;
.super Ljava/lang/Object;
.source "HomePresenter.java"

# interfaces
.implements Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;->InitialZeroPage()Lcom/sec/android/app/launcher/views/HomePageView;
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$29;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$29;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$29;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$29;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4100(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->setHomeZeroPageOnOff()V

    :cond_0
    :goto_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$29;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageToMove:I
    invoke-static {v2, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$902(Lcom/sec/android/app/launcher/activities/HomePresenter;I)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$29;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchToHomescreenMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    goto :goto_0
.end method

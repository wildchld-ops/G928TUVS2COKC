.class Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$3;
.super Ljava/lang/Object;
.source "OptionTrayPresenter.java"

# interfaces
.implements Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->setOptionTray()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 5

    const/4 v4, 0x4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->access$100(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentMode()Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageEditMode()Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToWidgetsFragment()Z

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getEditBarPresenter()Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->setVisibilityAnimated(I)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->access$000(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

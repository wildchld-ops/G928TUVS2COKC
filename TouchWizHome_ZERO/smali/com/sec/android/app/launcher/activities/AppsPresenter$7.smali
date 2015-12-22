.class Lcom/sec/android/app/launcher/activities/AppsPresenter$7;
.super Ljava/lang/Object;
.source "AppsPresenter.java"

# interfaces
.implements Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/AppsPresenter;->setupTitle()V
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1000(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->NORMAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->removeFocus()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAppsFragment()Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/AlphabeticSortDialog;->createAndShow(Landroid/app/FragmentManager;Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/activities/AlphabeticSortDialog;

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not list mode: AtoZ fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

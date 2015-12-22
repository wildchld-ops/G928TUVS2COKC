.class Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$6;
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$6;->this$0:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$6;->this$0:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->access$100(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetsFragment()Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$6;->this$0:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->access$100(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetsFragment()Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$6;->this$0:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->access$100(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$6;->this$0:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->setScreenGridView()V

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->screenGrid()V

    goto :goto_0
.end method

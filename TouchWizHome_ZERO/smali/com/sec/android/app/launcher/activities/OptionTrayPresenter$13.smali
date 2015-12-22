.class Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$13;
.super Ljava/lang/Object;
.source "OptionTrayPresenter.java"

# interfaces
.implements Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->setZeroPageSettingView()V
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$13;->this$0:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 3

    const/4 v2, 0x4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$13;->this$0:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->access$100(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setVisibilityEditBarPresenter(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$13;->this$0:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->access$000(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$13;->this$0:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mZeroPageSettingView:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->access$500(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToZeroPageListFragment()V

    const/4 v1, 0x1

    return v1
.end method

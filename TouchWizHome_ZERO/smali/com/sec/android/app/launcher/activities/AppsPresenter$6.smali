.class Lcom/sec/android/app/launcher/activities/AppsPresenter$6;
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$6;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$6;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setListMode(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$6;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isKeypadFocusAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$6;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$6;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditDone:Lcom/sec/daliviews/views/TextView;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$900(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->selectArea(Lcom/sec/daliviews/views/NativeViewBase;Z)V

    :cond_0
    return v2
.end method

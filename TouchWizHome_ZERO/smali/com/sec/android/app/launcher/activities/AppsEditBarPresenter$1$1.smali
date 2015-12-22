.class Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$1$1;
.super Ljava/lang/Object;
.source "AppsEditBarPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$1;->handleOnDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$1;

.field final synthetic val$item:Lcom/sec/daliviews/views/Item;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$1;Lcom/sec/daliviews/views/Item;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$1$1;->this$1:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$1;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$1$1;->val$item:Lcom/sec/daliviews/views/Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$1$1;->val$item:Lcom/sec/daliviews/views/Item;

    instance-of v0, v0, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$1$1;->this$1:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$1;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$1;->this$0:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mLauncherActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$1$1;->val$item:Lcom/sec/daliviews/views/Item;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->uninstallAndDisableApp(Lcom/sec/daliviews/views/Item;)V

    :cond_0
    return-void
.end method

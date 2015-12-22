.class Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$7;
.super Ljava/lang/Object;
.source "OptionTrayPresenter.java"

# interfaces
.implements Lcom/sec/daliviews/views/NativeViewBase$OnLongPressListener;


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

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Lcom/sec/daliviews/views/NativeViewBase;Landroid/view/MotionEvent;)Z
    .locals 6

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, ".homescreen"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "OptionTrayPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScreenGridButton LongPress, file.exists(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->access$100(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->access$100(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomeFragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->access$100(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    const-class v4, Lcom/sec/android/app/launcher/services/LauncherService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.sec.android.intent.action.REQUEST_BACKUP_HOMESCREEN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "SOURCE"

    const-string v4, "DEFAULT_LAYOUT"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/app/launcher/activities/LauncherApp;->startLauncherService(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->access$100(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    const-string v4, "default_workspace.xml, default_application_order.xml is creating..."

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_0
    const/4 v3, 0x0

    return v3
.end method

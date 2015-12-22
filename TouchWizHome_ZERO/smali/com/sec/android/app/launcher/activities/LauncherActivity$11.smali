.class Lcom/sec/android/app/launcher/activities/LauncherActivity$11;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/LauncherActivity;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$11;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$11;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2100(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$11;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2100(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getOptionTrayPresenter()Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->setScreenGridView()V

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->screenGrid()V

    :cond_0
    return-void
.end method

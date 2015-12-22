.class Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$2$1;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$2;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$2;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$2$1;->this$3:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitialized()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$2$1;->this$3:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$2;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$2;->this$2:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2200(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$2$1;->this$3:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$2;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$2;->this$2:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2200(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/AppsFragment;->onNativeInit(Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;)V

    :cond_0
    return-void
.end method

.class Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$3;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$3;->this$2:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$3;->this$2:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->showZeroPageListFragment()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$3;->this$2:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;->this$1:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$2100(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$3$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$3$1;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1$3;)V

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/HomeFragment;->onNativeInit(Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    return-void
.end method

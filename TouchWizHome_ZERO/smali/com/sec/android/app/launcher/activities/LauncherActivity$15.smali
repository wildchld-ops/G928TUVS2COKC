.class Lcom/sec/android/app/launcher/activities/LauncherActivity$15;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/LauncherActivity;->blurWallpaper(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$15;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iput-boolean p2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$15;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$15;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mBackgroundView:Lcom/sec/daliviews/views/BackgroundView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$3800(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/daliviews/views/BackgroundView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$15;->val$enable:Z

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/BackgroundView;->blurBackground(Z)V

    return-void
.end method

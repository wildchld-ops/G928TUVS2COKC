.class Lcom/sec/android/app/launcher/activities/LauncherActivity$9;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/LauncherActivity;->playSoundEffect(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

.field final synthetic val$androidEffectId:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$9;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iput p2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$9;->val$androidEffectId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$9;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1500(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Landroid/view/SurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$9;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1500(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Landroid/view/SurfaceView;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$9;->val$androidEffectId:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->playSoundEffect(I)V

    :cond_0
    return-void
.end method

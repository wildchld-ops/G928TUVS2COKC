.class Lcom/sec/android/app/launcher/activities/LauncherActivity$16;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/LauncherActivity;->setBackgroundColorModulation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

.field final synthetic val$color:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$16;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iput p2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$16;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$16;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mBackgroundView:Lcom/sec/daliviews/views/BackgroundView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$3800(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/daliviews/views/BackgroundView;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$16;->val$color:I

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/BackgroundView;->setBackgroundColorModulation(I)V

    return-void
.end method

.class Lcom/sec/android/app/launcher/activities/HomePresenter$34;
.super Ljava/lang/Object;
.source "HomePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;->updateEditMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$34;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0252

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    const v3, 0x7f0a0239

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$34;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v1

    # invokes: Lcom/sec/android/app/launcher/activities/HomePresenter;->startZeroPageZoomedOutMode(Landroid/content/res/Resources;FF)V
    invoke-static {v3, v2, v4, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$7100(Lcom/sec/android/app/launcher/activities/HomePresenter;Landroid/content/res/Resources;FF)V

    return-void
.end method

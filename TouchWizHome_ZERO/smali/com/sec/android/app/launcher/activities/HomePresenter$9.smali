.class Lcom/sec/android/app/launcher/activities/HomePresenter$9;
.super Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;
.source "HomePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;->startZeroPageZoomedOutMode(Landroid/content/res/Resources;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

.field final synthetic val$homeZeroPageEnabled:Z

.field final synthetic val$zeroPagePreviewOff:F

.field final synthetic val$zeroPagePreviewOn:F


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/HomePresenter;ZFF)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$9;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iput-boolean p2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$9;->val$homeZeroPageEnabled:Z

    iput p3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$9;->val$zeroPagePreviewOn:F

    iput p4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$9;->val$zeroPagePreviewOff:F

    invoke-direct {p0}, Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public handleUIAnimEvent(I)V
    .locals 4

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$9;->val$homeZeroPageEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$9;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getHomeZeroPagePresenter()Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageView()Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->updateBackground(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$9;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getHomeZeroPagePresenter()Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageBgImageView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$9;->val$zeroPagePreviewOn:F

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ImageView;->setOpacity(F)V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$9;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4100(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageBgImageView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ImageView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v0

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutGravity(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$9;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getHomeZeroPagePresenter()Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageBgImageView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/ImageView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$9;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getHomeZeroPagePresenter()Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageView()Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->updateBackground(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$9;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getHomeZeroPagePresenter()Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageBgImageView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$9;->val$zeroPagePreviewOff:F

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ImageView;->setOpacity(F)V

    goto :goto_0
.end method

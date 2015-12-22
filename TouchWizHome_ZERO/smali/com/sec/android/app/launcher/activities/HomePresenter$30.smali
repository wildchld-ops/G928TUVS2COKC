.class Lcom/sec/android/app/launcher/activities/HomePresenter$30;
.super Ljava/lang/Object;
.source "HomePresenter.java"

# interfaces
.implements Lcom/sec/android/app/launcher/views/HomeZeroPageView$OnAttachedToStageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;->InitialZeroPage()Lcom/sec/android/app/launcher/views/HomePageView;
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$30;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToStageEvent()V
    .locals 12

    const/4 v6, 0x1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/high16 v8, 0x40000000    # 2.0f

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$30;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4100(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$30;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v4, v5, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a0252

    invoke-virtual {v1, v4, v6, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    const v4, 0x7f0a02e2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v0, v4

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$30;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4100(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageBgImageView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v3

    float-to-double v4, v2

    mul-double/2addr v4, v10

    double-to-float v4, v4

    mul-float/2addr v4, v8

    float-to-double v6, v2

    mul-double/2addr v6, v10

    double-to-float v5, v6

    mul-float/2addr v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/sec/daliviews/views/NativeViewBase;->setScale(FF)V

    invoke-virtual {v3, v0}, Lcom/sec/daliviews/views/NativeViewBase;->setYPosition(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$30;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$30;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4100(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageBgImageView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v3

    invoke-virtual {v3, v8, v8}, Lcom/sec/daliviews/views/NativeViewBase;->setScale(FF)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/NativeViewBase;->setYPosition(F)V

    goto :goto_0
.end method

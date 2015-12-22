.class Lcom/sec/android/app/launcher/activities/TopFivePresenter$2;
.super Lcom/sec/android/app/launcher/data/HomeItem;
.source "TopFivePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/TopFivePresenter;->populateAllApps(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$2;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/HomeItem;-><init>()V

    return-void
.end method


# virtual methods
.method public isCompatable(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeAppIconWithBg()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter$2;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/views/HomeItemView;->setPremultiplied(Z)V

    :cond_0
    return-object v0
.end method

.method public onViewLinked(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/data/HomeItem;->onViewLinked(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-virtual {p1, v1}, Lcom/sec/daliviews/views/NativeViewBase;->setCanAcceptDrop(Z)V

    invoke-virtual {p1, v1}, Lcom/sec/daliviews/views/NativeViewBase;->setDragEventInterest(I)V

    invoke-virtual {p1, v1}, Lcom/sec/daliviews/views/NativeViewBase;->setHapticFeedbackEnabled(Z)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter$2;->setMovability(I)V

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/HomeItemView;->setRecyclable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$2;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$100(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/daliviews/views/NativeViewBase;->setContentDescription(Ljava/lang/String;)V

    return-void
.end method

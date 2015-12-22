.class Lcom/sec/android/app/launcher/activities/TopFivePresenter$1;
.super Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;
.source "TopFivePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/TopFivePresenter;->setupTopFiveAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/TopFivePresenter;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$1;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-direct {p0, p2}, Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;-><init>(Lcom/sec/daliviews/views/NativeViewBase;)V

    return-void
.end method


# virtual methods
.method public handleUIAnimEvent(I)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter$1;->getView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->setSensitive(Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    :cond_3
    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/NativeViewBase;->setSensitive(Z)V

    goto :goto_0
.end method

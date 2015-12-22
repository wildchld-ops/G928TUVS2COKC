.class Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$1;
.super Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;
.source "EditBarPresenterBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->hideEditBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$1;->this$0:Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;

    invoke-direct {p0}, Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public handleUIAnimEvent(I)V
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$1;->this$0:Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    invoke-static {}, Lcom/sec/daliviews/utils/LayerManager;->instance()Lcom/sec/daliviews/utils/LayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/utils/LayerManager;->updateLayers()V

    :cond_0
    return-void
.end method

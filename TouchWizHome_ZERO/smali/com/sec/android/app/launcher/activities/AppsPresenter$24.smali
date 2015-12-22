.class Lcom/sec/android/app/launcher/activities/AppsPresenter$24;
.super Ljava/lang/Object;
.source "AppsPresenter.java"

# interfaces
.implements Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/AppsPresenter;->onItemTouch(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$24;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeerDestroyed(Lcom/sec/daliviews/views/PeerBase;)V
    .locals 2

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Touched item destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$24;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTouchEffectIcon:Lcom/sec/daliviews/views/IconView;
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2602(Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/daliviews/views/IconView;)Lcom/sec/daliviews/views/IconView;

    return-void
.end method

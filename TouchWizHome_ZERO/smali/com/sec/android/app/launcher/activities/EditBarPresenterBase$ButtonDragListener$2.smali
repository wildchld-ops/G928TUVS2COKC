.class Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener$2;
.super Ljava/lang/Object;
.source "EditBarPresenterBase.java"

# interfaces
.implements Lcom/sec/daliviews/animation/NativeAnimation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener$2;->this$1:Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished(Lcom/sec/daliviews/animation/NativeAnimation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener$2;->this$1:Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mAnimImageTwoOver:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener$2;->this$1:Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;

    iget-object v1, v1, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->mImageTwo:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    return-void
.end method

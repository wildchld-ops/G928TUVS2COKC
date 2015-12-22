.class Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5$1;
.super Ljava/lang/Object;
.source "HomeEditBarPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;->onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;

.field final synthetic val$curBgTint:I

.field final synthetic val$draggedView:Lcom/sec/daliviews/views/NativeViewBase;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;Lcom/sec/daliviews/views/NativeViewBase;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5$1;->this$1:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5$1;->val$draggedView:Lcom/sec/daliviews/views/NativeViewBase;

    iput p3, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5$1;->val$curBgTint:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5$1;->val$draggedView:Lcom/sec/daliviews/views/NativeViewBase;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5$1;->val$curBgTint:I

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->setBackgroundTint(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5$1;->this$1:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;->mUndoTinting:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;->access$202(Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method

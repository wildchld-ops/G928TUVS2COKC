.class Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener$1;
.super Ljava/lang/Object;
.source "PagePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener$1;->this$1:Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener$1;->this$1:Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;

    iget-object v1, v1, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    iget-object v1, v1, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v2, 0x7f0d007e

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

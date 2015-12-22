.class Lcom/sec/android/app/launcher/views/HomeFolderView$5;
.super Ljava/lang/Object;
.source "HomeFolderView.java"

# interfaces
.implements Lcom/sec/daliviews/views/ContainerViewBase$OnInterceptTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/HomeFolderView;->setUninstallView(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/views/HomeFolderView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/HomeFolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView$5;->this$0:Lcom/sec/android/app/launcher/views/HomeFolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeFolderView$5;->this$0:Lcom/sec/android/app/launcher/views/HomeFolderView;

    const/4 v3, 0x1

    # setter for: Lcom/sec/android/app/launcher/views/HomeFolderView;->isUninstallTouched:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/launcher/views/HomeFolderView;->access$402(Lcom/sec/android/app/launcher/views/HomeFolderView;Z)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeFolderView$5;->this$0:Lcom/sec/android/app/launcher/views/HomeFolderView;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getUninstallView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f0b0092

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/NativeViewBase;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02004c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

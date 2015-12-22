.class Lcom/sec/android/app/launcher/views/HomeFolderView$1;
.super Ljava/lang/Object;
.source "HomeFolderView.java"

# interfaces
.implements Lcom/sec/daliviews/views/NativeViewBase$VisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/HomeFolderView;->setBadge(I)V
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView$1;->this$0:Lcom/sec/android/app/launcher/views/HomeFolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChange(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView$1;->this$0:Lcom/sec/android/app/launcher/views/HomeFolderView;

    # invokes: Lcom/sec/android/app/launcher/views/HomeFolderView;->isOpen()Z
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->access$000(Lcom/sec/android/app/launcher/views/HomeFolderView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView$1;->this$0:Lcom/sec/android/app/launcher/views/HomeFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->isAppsEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView$1;->this$0:Lcom/sec/android/app/launcher/views/HomeFolderView;

    # getter for: Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->access$100(Lcom/sec/android/app/launcher/views/HomeFolderView;)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView$1;->this$0:Lcom/sec/android/app/launcher/views/HomeFolderView;

    # getter for: Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->access$100(Lcom/sec/android/app/launcher/views/HomeFolderView;)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView$1;->this$0:Lcom/sec/android/app/launcher/views/HomeFolderView;

    # getter for: Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->access$100(Lcom/sec/android/app/launcher/views/HomeFolderView;)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    :cond_1
    return-void
.end method

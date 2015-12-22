.class Lcom/sec/android/app/launcher/views/HomeFolderView$4;
.super Ljava/lang/Object;
.source "HomeFolderView.java"

# interfaces
.implements Lcom/sec/daliviews/animation/NativeAnimation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/HomeFolderView;->inflateUninstallView()V
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView$4;->this$0:Lcom/sec/android/app/launcher/views/HomeFolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished(Lcom/sec/daliviews/animation/NativeAnimation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView$4;->this$0:Lcom/sec/android/app/launcher/views/HomeFolderView;

    # getter for: Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->access$300(Lcom/sec/android/app/launcher/views/HomeFolderView;)Lcom/sec/daliviews/views/FixedContainer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/FixedContainer;->setVisibility(I)V

    return-void
.end method

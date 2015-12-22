.class Lcom/sec/android/app/launcher/views/WidgetListFolderItemView$1;
.super Ljava/lang/Object;
.source "WidgetListFolderItemView.java"

# interfaces
.implements Lcom/sec/daliviews/animation/NativeAnimation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->setUninstallView(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView$1;->this$0:Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished(Lcom/sec/daliviews/animation/NativeAnimation;)V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView$1;->this$0:Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    # getter for: Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->access$000(Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;)Lcom/sec/daliviews/views/FixedContainer;

    move-result-object v0

    const v1, 0x7f0b0092

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/FixedContainer;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView$1;->this$0:Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    # getter for: Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->access$000(Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;)Lcom/sec/daliviews/views/FixedContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/FixedContainer;->setVisibility(I)V

    return-void
.end method

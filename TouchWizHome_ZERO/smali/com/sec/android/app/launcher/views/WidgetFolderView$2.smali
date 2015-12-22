.class Lcom/sec/android/app/launcher/views/WidgetFolderView$2;
.super Ljava/lang/Object;
.source "WidgetFolderView.java"

# interfaces
.implements Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/WidgetFolderView;->showOpenWidgetFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/views/WidgetFolderView;

.field final synthetic val$darkenView:Lcom/sec/daliviews/views/ContainerView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/WidgetFolderView;Lcom/sec/daliviews/views/ContainerView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView$2;->this$0:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    iput-object p2, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView$2;->val$darkenView:Lcom/sec/daliviews/views/ContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView$2;->val$darkenView:Lcom/sec/daliviews/views/ContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView$2;->this$0:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    iget-object v0, v0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setShadowVisible(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView$2;->this$0:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->showClosedFolder(Z)V

    return v2
.end method

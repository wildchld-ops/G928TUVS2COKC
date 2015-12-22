.class Lcom/sec/android/app/launcher/views/WidgetFolderView$6;
.super Ljava/lang/Object;
.source "WidgetFolderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/WidgetFolderView;->closeOpenFolderDelayed(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/views/WidgetFolderView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/WidgetFolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView$6;->this$0:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView$6;->this$0:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    # getter for: Lcom/sec/android/app/launcher/views/WidgetFolderView;->mIsOpened:Z
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->access$200(Lcom/sec/android/app/launcher/views/WidgetFolderView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView$6;->this$0:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->showClosedFolder(Z)V

    :cond_0
    return-void
.end method

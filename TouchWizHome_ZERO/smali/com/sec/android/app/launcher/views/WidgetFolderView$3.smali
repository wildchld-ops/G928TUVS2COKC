.class Lcom/sec/android/app/launcher/views/WidgetFolderView$3;
.super Ljava/lang/Object;
.source "WidgetFolderView.java"

# interfaces
.implements Lcom/sec/daliviews/views/AdapterView$OnItemLongClickListener;


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


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/WidgetFolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView$3;->this$0:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView$3;->this$0:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->showClosedFolder(Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView$3;->this$0:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    iget-object v1, v1, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetsFragment()Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->onItemLongClick(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;)Z

    const/4 v1, 0x1

    return v1
.end method

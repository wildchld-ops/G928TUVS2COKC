.class Lcom/sec/android/app/launcher/views/WidgetFolderView$1;
.super Ljava/lang/Object;
.source "WidgetFolderView.java"

# interfaces
.implements Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;


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

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView$1;->this$0:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)Z
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p2, Lcom/sec/android/app/launcher/views/WidgetListItemView;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/sec/android/app/launcher/views/WidgetListItemView;

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->clickAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView$1;->this$0:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    iget-object v0, v0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView$1;->this$0:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    iget-object v0, v0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v1, 0x7f0d0068

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->showToastMsg(II)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView$1;->this$0:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    iget-object v0, v0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v1, 0x7f0d00b2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->showToastMsg(II)V

    goto :goto_0
.end method

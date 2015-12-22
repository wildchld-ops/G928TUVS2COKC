.class Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$1;
.super Ljava/lang/Object;
.source "AppWidgetDrawableView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->setHostView(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$1;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$1;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->access$400(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$1;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->isOnScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibility()Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibility()Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/Accessibility;->getFocusedView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$1;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;
    invoke-static {v2}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->access$400(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    move-result-object v2

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;
    invoke-static {v2}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->access$100(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;)Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    move-result-object v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$1;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->isOnScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$1;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->access$400(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method

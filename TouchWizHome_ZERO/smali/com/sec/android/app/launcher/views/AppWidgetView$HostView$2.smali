.class Lcom/sec/android/app/launcher/views/AppWidgetView$HostView$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "AppWidgetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;->makeNavigationGuard(Ljava/lang/String;I)Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$HostView$2;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    const/high16 v2, 0x10000

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$HostView$2;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;->access$300(Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;)Lcom/sec/android/app/launcher/views/AppWidgetView;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibility()Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/Accessibility;->getFocusedView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$HostView$2;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;

    # invokes: Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;->findNextNavigableElement(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    invoke-static {v0, p1, p2}, Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;->access$400(Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$HostView$2;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;->access$300(Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;)Lcom/sec/android/app/launcher/views/AppWidgetView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$HostView$2;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;->access$300(Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;)Lcom/sec/android/app/launcher/views/AppWidgetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/AppWidgetView;->removeAccessibilityFocus()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.class Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "AppWidgetDrawableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->makeNavigationGuard(Ljava/lang/String;I)Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView$2;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

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

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView$2;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->access$100(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;)Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibility()Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/Accessibility;->getFocusedView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView$2;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    # invokes: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->findNextNavigableElement(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    invoke-static {v0, p1, p2}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->access$200(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView$2;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->access$100(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;)Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView$2;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->mDaliView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->access$100(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;)Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->removeAccessibilityFocus()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

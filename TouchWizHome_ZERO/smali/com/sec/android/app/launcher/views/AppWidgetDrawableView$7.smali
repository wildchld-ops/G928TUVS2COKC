.class Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$7;
.super Landroid/view/View$AccessibilityDelegate;
.source "AppWidgetDrawableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->getNodeInfo(Landroid/util/SparseIntArray;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

.field final synthetic val$containerView:Landroid/view/View;

.field final synthetic val$hostView:Landroid/appwidget/AppWidgetHostView;

.field final synthetic val$id:I

.field final synthetic val$root:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;Landroid/view/View;Landroid/view/View;ILandroid/appwidget/AppWidgetHostView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$7;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    iput-object p2, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$7;->val$containerView:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$7;->val$root:Landroid/view/View;

    iput p4, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$7;->val$id:I

    iput-object p5, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$7;->val$hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$7;->val$containerView:Landroid/view/View;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$7;->val$root:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$7;->val$id:I

    invoke-virtual {p2, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$7;->val$hostView:Landroid/appwidget/AppWidgetHostView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$7;->val$containerView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    goto :goto_0
.end method

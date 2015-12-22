.class Lcom/android/incallui/MaterialRippleLayout$PerformClickEvent;
.super Ljava/lang/Object;
.source "MaterialRippleLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/MaterialRippleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClickEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/MaterialRippleLayout;


# direct methods
.method private constructor <init>(Lcom/android/incallui/MaterialRippleLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/android/incallui/MaterialRippleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/MaterialRippleLayout;Lcom/android/incallui/MaterialRippleLayout$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/MaterialRippleLayout$PerformClickEvent;-><init>(Lcom/android/incallui/MaterialRippleLayout;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v4, p0, Lcom/android/incallui/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/android/incallui/MaterialRippleLayout;

    invoke-virtual {v4}, Lcom/android/incallui/MaterialRippleLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/AdapterView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/android/incallui/MaterialRippleLayout;

    invoke-virtual {v4}, Lcom/android/incallui/MaterialRippleLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView;

    iget-object v4, p0, Lcom/android/incallui/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/android/incallui/MaterialRippleLayout;

    invoke-virtual {v2, v4}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/android/incallui/MaterialRippleLayout;

    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/incallui/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/android/incallui/MaterialRippleLayout;

    # getter for: Lcom/android/incallui/MaterialRippleLayout;->childView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/incallui/MaterialRippleLayout;->access$600(Lcom/android/incallui/MaterialRippleLayout;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->performClick()Z

    goto :goto_1
.end method

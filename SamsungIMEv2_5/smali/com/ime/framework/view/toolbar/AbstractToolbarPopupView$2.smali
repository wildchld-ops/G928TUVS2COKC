.class Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView$2;
.super Ljava/lang/Object;
.source "AbstractToolbarPopupView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->adjustPointers(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView$2;->this$0:Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v0, v1

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView$2;->this$0:Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090791

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView$2;->this$0:Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->dismissPopupWindow()V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.class Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView$1;
.super Ljava/lang/Object;
.source "AbstractToolbarPopupView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->build(Landroid/widget/PopupWindow;Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;)V
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

    iput-object p1, p0, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView$1;->this$0:Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    if-nez p2, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView$1;->this$0:Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;

    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->getVisibleContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView$1;->this$0:Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;

    # getter for: Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v3}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->access$000(Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;)Landroid/widget/PopupWindow;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    sget-boolean v3, Lcom/ime/framework/util/Debug;->INFO:Z

    if-eqz v3, :cond_2

    const-string v3, "SamsungIME_UnifiedIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouch() x: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", y: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SamsungIME_UnifiedIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouch() t: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",l: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", r: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", b: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v1, v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt v1, v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v2, v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v2, v3, :cond_1

    :cond_3
    iget-object v3, p0, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView$1;->this$0:Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;

    # getter for: Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v3}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->access$000(Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/ime/framework/view/AbstractViewController$4;
.super Ljava/lang/Object;
.source "AbstractViewController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/AbstractViewController;->showOrDismissPoup(Landroid/view/View;Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/AbstractViewController;

.field final synthetic val$popupContentViewType:Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/AbstractViewController;Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/AbstractViewController$4;->this$0:Lcom/ime/framework/view/AbstractViewController;

    iput-object p2, p0, Lcom/ime/framework/view/AbstractViewController$4;->val$popupContentViewType:Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    sget-boolean v0, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME_UnifiedIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show() MotionEvent.ACTION_OUTSIDE. type ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController$4;->val$popupContentViewType:Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController$4;->this$0:Lcom/ime/framework/view/AbstractViewController;

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

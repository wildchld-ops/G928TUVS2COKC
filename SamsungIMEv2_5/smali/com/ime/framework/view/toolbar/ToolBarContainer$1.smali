.class Lcom/ime/framework/view/toolbar/ToolBarContainer$1;
.super Ljava/lang/Object;
.source "ToolBarContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/toolbar/ToolBarContainer;->getOnTouchListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/toolbar/ToolBarContainer;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/toolbar/ToolBarContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer$1;->this$0:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    sget-boolean v3, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungIME_UnifiedIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ToolBarContainer onTouch(): event action is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    instance-of v3, p1, Landroid/widget/ImageButton;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer$1;->this$0:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarClose:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->access$200(Lcom/ime/framework/view/toolbar/ToolBarContainer;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return v2

    :pswitch_1
    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer$1;->this$0:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarClose:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->access$200(Lcom/ime/framework/view/toolbar/ToolBarContainer;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v4, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer$1;->this$0:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    invoke-virtual {v4}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getToolbarPressedBg()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer$1;->this$0:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->access$100(Lcom/ime/framework/view/toolbar/ToolBarContainer;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v1

    const-string v3, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    invoke-interface {v1, v3, v6}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer$1;->this$0:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    invoke-virtual {v3, v6}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->playSoundEffect(I)V

    :cond_2
    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer$1;->this$0:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    # invokes: Lcom/ime/framework/view/toolbar/ToolBarContainer;->updateCloseButtonBackground()V
    invoke-static {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->access$300(Lcom/ime/framework/view/toolbar/ToolBarContainer;)V

    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer$1;->this$0:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarContainer;->mHideImeHandler:Lcom/ime/framework/view/toolbar/ToolBarContainer$CloseHandler;
    invoke-static {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->access$400(Lcom/ime/framework/view/toolbar/ToolBarContainer;)Lcom/ime/framework/view/toolbar/ToolBarContainer$CloseHandler;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer$1;->this$0:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarContainer;->mHideImeHandler:Lcom/ime/framework/view/toolbar/ToolBarContainer$CloseHandler;
    invoke-static {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->access$400(Lcom/ime/framework/view/toolbar/ToolBarContainer;)Lcom/ime/framework/view/toolbar/ToolBarContainer$CloseHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer$CloseHandler;->closeIme()V

    :cond_3
    invoke-static {}, Lcom/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/ime/framework/sidesync/SideSyncManager;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/ime/framework/sidesync/SideSyncManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSink()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/ime/framework/sidesync/SideSyncManager;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/ime/framework/sidesync/SideSyncManager;->sendSideSyncKeyCode(I)V

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer$1;->this$0:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarContainer;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->access$100(Lcom/ime/framework/view/toolbar/ToolBarContainer;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer$1;->this$0:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarContainer;->mToolbarClose:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->access$200(Lcom/ime/framework/view/toolbar/ToolBarContainer;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v4, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer$1;->this$0:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    invoke-virtual {v4}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getToolbarNormalBg()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarContainer$1;->this$0:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    # invokes: Lcom/ime/framework/view/toolbar/ToolBarContainer;->updateCloseButtonBackground()V
    invoke-static {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->access$300(Lcom/ime/framework/view/toolbar/ToolBarContainer;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

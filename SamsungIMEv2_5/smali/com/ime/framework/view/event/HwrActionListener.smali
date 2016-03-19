.class public Lcom/ime/framework/view/event/HwrActionListener;
.super Ljava/lang/Object;
.source "HwrActionListener.java"


# instance fields
.field mInputManager:Lcom/ime/framework/common/InputManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/view/event/HwrActionListener;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/event/HwrActionListener;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-void
.end method


# virtual methods
.method public onTouchCancel(IIJ)Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/event/HwrActionListener;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ime/framework/common/InputManager;->onHwrTouchCancel(IIJ)Z

    move-result v0

    return v0
.end method

.method public onTouchDown(IIJ)Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/event/HwrActionListener;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ime/framework/common/InputManager;->onHwrTouchDown(IIJ)Z

    move-result v0

    return v0
.end method

.method public onTouchMove(IIJ)Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/event/HwrActionListener;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ime/framework/common/InputManager;->onHwrTouchMove(IIJ)Z

    move-result v0

    return v0
.end method

.method public onTouchUp(IIJ)Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/event/HwrActionListener;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ime/framework/common/InputManager;->onHwrTouchUp(IIJ)Z

    move-result v0

    return v0
.end method

.class Lcom/ime/framework/airmessage/AirMessageUIService$2;
.super Lcom/ime/framework/airmessage/IAirMessageUIService$Stub;
.source "AirMessageUIService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/airmessage/AirMessageUIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/airmessage/AirMessageUIService;


# direct methods
.method constructor <init>(Lcom/ime/framework/airmessage/AirMessageUIService;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/airmessage/AirMessageUIService$2;->this$0:Lcom/ime/framework/airmessage/AirMessageUIService;

    invoke-direct {p0}, Lcom/ime/framework/airmessage/IAirMessageUIService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getFloatingWinodwLocation()[I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x2

    new-array v4, v6, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/ime/framework/airmessage/AirMessageUIService$2;->this$0:Lcom/ime/framework/airmessage/AirMessageUIService;

    # getter for: Lcom/ime/framework/airmessage/AirMessageUIService;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v6}, Lcom/ime/framework/airmessage/AirMessageUIService;->access$000(Lcom/ime/framework/airmessage/AirMessageUIService;)Lcom/ime/framework/common/InputManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    if-nez v5, :cond_0

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {v5}, Lcom/ime/framework/view/PopupKeyboardView;->getCurrentLocationX()I

    move-result v0

    invoke-virtual {v5}, Lcom/ime/framework/view/PopupKeyboardView;->getKeyboardCurrentLocationY()I

    move-result v1

    iget-object v6, p0, Lcom/ime/framework/airmessage/AirMessageUIService$2;->this$0:Lcom/ime/framework/airmessage/AirMessageUIService;

    # getter for: Lcom/ime/framework/airmessage/AirMessageUIService;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v6}, Lcom/ime/framework/airmessage/AirMessageUIService;->access$000(Lcom/ime/framework/airmessage/AirMessageUIService;)Lcom/ime/framework/common/InputManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getKeyboardViewHeight()I

    move-result v3

    iget-object v6, p0, Lcom/ime/framework/airmessage/AirMessageUIService$2;->this$0:Lcom/ime/framework/airmessage/AirMessageUIService;

    # getter for: Lcom/ime/framework/airmessage/AirMessageUIService;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v6}, Lcom/ime/framework/airmessage/AirMessageUIService;->access$000(Lcom/ime/framework/airmessage/AirMessageUIService;)Lcom/ime/framework/common/InputManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/ime/framework/airmessage/AirMessageUIService$2;->this$0:Lcom/ime/framework/airmessage/AirMessageUIService;

    # getter for: Lcom/ime/framework/airmessage/AirMessageUIService;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v6}, Lcom/ime/framework/airmessage/AirMessageUIService;->access$000(Lcom/ime/framework/airmessage/AirMessageUIService;)Lcom/ime/framework/common/InputManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getEmoticonViewHeight()I

    move-result v6

    add-int/2addr v3, v6

    :cond_1
    aput v0, v4, v9

    iget-object v6, p0, Lcom/ime/framework/airmessage/AirMessageUIService$2;->this$0:Lcom/ime/framework/airmessage/AirMessageUIService;

    # getter for: Lcom/ime/framework/airmessage/AirMessageUIService;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v6}, Lcom/ime/framework/airmessage/AirMessageUIService;->access$000(Lcom/ime/framework/airmessage/AirMessageUIService;)Lcom/ime/framework/common/InputManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int v7, v1, v3

    sub-int/2addr v6, v7

    aput v6, v4, v10

    const-string v6, "AirMessageUIService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getFloatingWinodwLocation outLeftTopX="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v4, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "AirMessageUIService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getFloatingWinodwLocation outLeftTopY="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v4, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIMEHeight()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/ime/framework/airmessage/AirMessageUIService$2;->this$0:Lcom/ime/framework/airmessage/AirMessageUIService;

    invoke-virtual {v2}, Lcom/ime/framework/airmessage/AirMessageUIService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/ime/framework/airmessage/AirMessageUIService$2;->this$0:Lcom/ime/framework/airmessage/AirMessageUIService;

    # getter for: Lcom/ime/framework/airmessage/AirMessageUIService;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v2}, Lcom/ime/framework/airmessage/AirMessageUIService;->access$000(Lcom/ime/framework/airmessage/AirMessageUIService;)Lcom/ime/framework/common/InputManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getKeyboardViewHeight()I

    move-result v1

    const-string v2, "AirMessageUIService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIMEHeight"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIMEWidth()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/ime/framework/airmessage/AirMessageUIService$2;->this$0:Lcom/ime/framework/airmessage/AirMessageUIService;

    # getter for: Lcom/ime/framework/airmessage/AirMessageUIService;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v1}, Lcom/ime/framework/airmessage/AirMessageUIService;->access$000(Lcom/ime/framework/airmessage/AirMessageUIService;)Lcom/ime/framework/common/InputManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getKeyboardViewWidth()I

    move-result v0

    const-string v1, "AirMessageUIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIMEWidth"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getUITransparency()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/ime/framework/airmessage/AirMessageUIService$2;->this$0:Lcom/ime/framework/airmessage/AirMessageUIService;

    # getter for: Lcom/ime/framework/airmessage/AirMessageUIService;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v1}, Lcom/ime/framework/airmessage/AirMessageUIService;->access$000(Lcom/ime/framework/airmessage/AirMessageUIService;)Lcom/ime/framework/common/InputManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "transparency_level"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public isFloatingMode()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/airmessage/AirMessageUIService$2;->this$0:Lcom/ime/framework/airmessage/AirMessageUIService;

    # getter for: Lcom/ime/framework/airmessage/AirMessageUIService;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;
    invoke-static {v1}, Lcom/ime/framework/airmessage/AirMessageUIService;->access$100(Lcom/ime/framework/airmessage/AirMessageUIService;)Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "AirMessageUIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFloatingMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIMEWindowShown()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/airmessage/AirMessageUIService$2;->this$0:Lcom/ime/framework/airmessage/AirMessageUIService;

    # getter for: Lcom/ime/framework/airmessage/AirMessageUIService;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v0}, Lcom/ime/framework/airmessage/AirMessageUIService;->access$000(Lcom/ime/framework/airmessage/AirMessageUIService;)Lcom/ime/framework/common/InputManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getService()Lcom/ime/framework/common/AbstractInputMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ime/framework/common/AbstractInputMethod;->isInputViewShown()Z

    const/4 v0, 0x0

    return v0
.end method

.method public isUIOpacity()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/ime/framework/airmessage/AirMessageUIService$2;->this$0:Lcom/ime/framework/airmessage/AirMessageUIService;

    # getter for: Lcom/ime/framework/airmessage/AirMessageUIService;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v1}, Lcom/ime/framework/airmessage/AirMessageUIService;->access$000(Lcom/ime/framework/airmessage/AirMessageUIService;)Lcom/ime/framework/common/InputManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "opacity_checked"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public setUIOpacity(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v2, "AirMessageUIService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setUIOpacity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/ime/framework/airmessage/AirMessageUIService$2;->this$0:Lcom/ime/framework/airmessage/AirMessageUIService;

    # getter for: Lcom/ime/framework/airmessage/AirMessageUIService;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v2}, Lcom/ime/framework/airmessage/AirMessageUIService;->access$000(Lcom/ime/framework/airmessage/AirMessageUIService;)Lcom/ime/framework/common/InputManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "opacity_checked"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setUITransparency(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v2, "AirMessageUIService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setUITransparency level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/ime/framework/airmessage/AirMessageUIService$2;->this$0:Lcom/ime/framework/airmessage/AirMessageUIService;

    # getter for: Lcom/ime/framework/airmessage/AirMessageUIService;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v2}, Lcom/ime/framework/airmessage/AirMessageUIService;->access$000(Lcom/ime/framework/airmessage/AirMessageUIService;)Lcom/ime/framework/common/InputManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "transparency_level"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public updateFloatingWindowLocation(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v1, "AirMessageUIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFloatingWindowLocation (x,y)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/ime/framework/airmessage/AirMessageUIService$2;->this$0:Lcom/ime/framework/airmessage/AirMessageUIService;

    # getter for: Lcom/ime/framework/airmessage/AirMessageUIService;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/ime/framework/airmessage/AirMessageUIService;->access$200(Lcom/ime/framework/airmessage/AirMessageUIService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

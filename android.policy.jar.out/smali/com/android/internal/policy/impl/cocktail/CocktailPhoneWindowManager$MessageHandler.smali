.class Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$MessageHandler;
.super Landroid/os/Handler;
.source "CocktailPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$MessageHandler;->this$0:Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$MessageHandler;-><init>(Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$MessageHandler;->this$0:Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v1

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz v1, :cond_0

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$MessageHandler;->this$0:Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v5}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->access$000(Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$MessageHandler;->this$0:Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCoverStateSwitch()Z

    move-result v3

    iget-object v5, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$MessageHandler;->this$0:Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v5}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->access$000(Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/4 v7, 0x5

    if-ne v5, v7, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$MessageHandler;->this$0:Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v5}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->access$000(Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->setWillBeHideBlockMain(Z)V

    :cond_1
    :goto_1
    invoke-virtual {v1, v0, v4}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->wakeupCocktailBar(ZI)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$MessageHandler;->this$0:Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v5}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->access$000(Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v7

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    const/4 v5, 0x1

    :goto_2
    invoke-interface {v7, v5}, Landroid/view/WindowManagerPolicy$WindowState;->setWillBeHideBlockMain(Z)V

    goto :goto_1

    :cond_3
    move v5, v6

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$MessageHandler;->this$0:Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v5}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->access$100(Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$MessageHandler;->this$0:Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v5}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->access$100(Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->setWillBeHideBlockMain(Z)V

    goto :goto_1

    :pswitch_1
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->updateSysfsGripDisable(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

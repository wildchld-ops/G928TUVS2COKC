.class Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$3;
.super Ljava/lang/Object;
.source "KeyboardHeightSettingsFragmentTablet.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isShownKeyboardView()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v0, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mBaseHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

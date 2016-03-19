.class Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$40;
.super Ljava/lang/Object;
.source "SamsungKeypadSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->showPinchZoomGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

.field final synthetic val$chkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$40;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iput-object p2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$40;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$40;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$40;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    # setter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsCheckDontShowPinchZoomGuide:Z
    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$1002(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;Z)Z

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$40;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$40;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsCheckDontShowPinchZoomGuide:Z
    invoke-static {v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$1000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setCheckDontShowPinchZoomGuide(Z)V

    return-void
.end method

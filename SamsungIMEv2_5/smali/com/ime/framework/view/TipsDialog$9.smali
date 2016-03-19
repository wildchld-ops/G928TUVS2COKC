.class Lcom/ime/framework/view/TipsDialog$9;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/TipsDialog;->showAllowAppPermissionDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/TipsDialog;

.field final synthetic val$chkbox:Landroid/widget/CheckBox;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/TipsDialog;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/TipsDialog$9;->this$0:Lcom/ime/framework/view/TipsDialog;

    iput-object p2, p0, Lcom/ime/framework/view/TipsDialog$9;->val$editor:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/ime/framework/view/TipsDialog$9;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog$9;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "allow_app_permission"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog$9;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog$9;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog$9;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "allow_app_permission_checkbox"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_0
    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog$9;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog$9;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, v3}, Lcom/ime/framework/common/InputManager;->setDontShowAllowAppPermissionGuideConsecutively(Z)V

    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog$9;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->showDlgMsgBoxOriginal()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog$9;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "allow_app_permission_checkbox"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

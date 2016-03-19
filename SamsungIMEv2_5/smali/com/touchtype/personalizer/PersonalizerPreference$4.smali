.class Lcom/touchtype/personalizer/PersonalizerPreference$4;
.super Ljava/lang/Object;
.source "PersonalizerPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/personalizer/PersonalizerPreference;->showLearnFromContactsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizerPreference;

.field final synthetic val$chkbox:Landroid/widget/CheckBox;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizerPreference;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerPreference$4;->this$0:Lcom/touchtype/personalizer/PersonalizerPreference;

    iput-object p2, p0, Lcom/touchtype/personalizer/PersonalizerPreference$4;->val$editor:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/touchtype/personalizer/PersonalizerPreference$4;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference$4;->this$0:Lcom/touchtype/personalizer/PersonalizerPreference;

    new-instance v1, Lcom/touchtype/personalizer/service/ContactsPersonalizer;

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerPreference$4;->this$0:Lcom/touchtype/personalizer/PersonalizerPreference;

    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/touchtype/personalizer/service/ContactsPersonalizer;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/touchtype/personalizer/PersonalizerPreference;->mPersonalizer:Lcom/touchtype/personalizer/Personalizer;
    invoke-static {v0, v1}, Lcom/touchtype/personalizer/PersonalizerPreference;->access$002(Lcom/touchtype/personalizer/PersonalizerPreference;Lcom/touchtype/personalizer/Personalizer;)Lcom/touchtype/personalizer/Personalizer;

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference$4;->this$0:Lcom/touchtype/personalizer/PersonalizerPreference;

    # setter for: Lcom/touchtype/personalizer/PersonalizerPreference;->mActive:Z
    invoke-static {v0, v3}, Lcom/touchtype/personalizer/PersonalizerPreference;->access$102(Lcom/touchtype/personalizer/PersonalizerPreference;Z)Z

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference$4;->this$0:Lcom/touchtype/personalizer/PersonalizerPreference;

    # getter for: Lcom/touchtype/personalizer/PersonalizerPreference;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerPreference;->access$200(Lcom/touchtype/personalizer/PersonalizerPreference;)Lcom/ime/framework/common/InputManager;

    move-result-object v0

    const-string v1, "S018"

    const-string v2, "LearnFromContacts"

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference$4;->this$0:Lcom/touchtype/personalizer/PersonalizerPreference;

    # getter for: Lcom/touchtype/personalizer/PersonalizerPreference;->mPersonalizer:Lcom/touchtype/personalizer/Personalizer;
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerPreference;->access$000(Lcom/touchtype/personalizer/PersonalizerPreference;)Lcom/touchtype/personalizer/Personalizer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference$4;->this$0:Lcom/touchtype/personalizer/PersonalizerPreference;

    # getter for: Lcom/touchtype/personalizer/PersonalizerPreference;->mPersonalizer:Lcom/touchtype/personalizer/Personalizer;
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerPreference;->access$000(Lcom/touchtype/personalizer/PersonalizerPreference;)Lcom/touchtype/personalizer/Personalizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/touchtype/personalizer/Personalizer;->cancel()V

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference$4;->this$0:Lcom/touchtype/personalizer/PersonalizerPreference;

    # getter for: Lcom/touchtype/personalizer/PersonalizerPreference;->mPersonalizer:Lcom/touchtype/personalizer/Personalizer;
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerPreference;->access$000(Lcom/touchtype/personalizer/PersonalizerPreference;)Lcom/touchtype/personalizer/Personalizer;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerPreference$4;->this$0:Lcom/touchtype/personalizer/PersonalizerPreference;

    invoke-virtual {v1}, Lcom/touchtype/personalizer/PersonalizerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/touchtype/personalizer/Personalizer;->startPersonalization(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference$4;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "first_allow_app_contacts_execution"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference$4;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "allow_app_permission_contacts"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference$4;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference$4;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "allow_app_permission_contacts_checkbox"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_0
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference$4;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference$4;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "allow_app_permission_contacts_checkbox"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

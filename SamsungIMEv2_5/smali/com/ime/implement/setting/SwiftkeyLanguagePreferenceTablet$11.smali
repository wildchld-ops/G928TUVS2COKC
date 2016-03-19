.class Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$11;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagePreferenceTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->showUseNetworkConnectionsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

.field final synthetic val$chkbox:Landroid/widget/CheckBox;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$11;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    iput-object p2, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$11;->val$editor:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$11;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$11;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "use_network_connection"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$11;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$11;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "use_network_connection_checkbox"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_0
    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$11;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$11;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mParent:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;
    invoke-static {v0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$1500(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->rebuildLanguageList()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$11;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "use_network_connection_checkbox"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

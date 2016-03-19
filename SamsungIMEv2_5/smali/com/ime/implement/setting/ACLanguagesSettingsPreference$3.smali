.class Lcom/ime/implement/setting/ACLanguagesSettingsPreference$3;
.super Ljava/lang/Object;
.source "ACLanguagesSettingsPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/ACLanguagesSettingsPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/ACLanguagesSettingsPreference;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/ACLanguagesSettingsPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference$3;->this$0:Lcom/ime/implement/setting/ACLanguagesSettingsPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference$3;->this$0:Lcom/ime/implement/setting/ACLanguagesSettingsPreference;

    invoke-virtual {v3}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference$3;->this$0:Lcom/ime/implement/setting/ACLanguagesSettingsPreference;

    iget v3, v3, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference$3;->this$0:Lcom/ime/implement/setting/ACLanguagesSettingsPreference;

    iget v3, v3, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference$3;->this$0:Lcom/ime/implement/setting/ACLanguagesSettingsPreference;

    # getter for: Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;
    invoke-static {v3}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->access$100(Lcom/ime/implement/setting/ACLanguagesSettingsPreference;)Lcom/ime/implement/setting/ACLanguagesSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/implement/setting/ACLanguagesSettings;->getCheckedItemNumber()I

    move-result v3

    if-lt v3, v6, :cond_2

    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference$3;->this$0:Lcom/ime/implement/setting/ACLanguagesSettingsPreference;

    iget-object v3, v3, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/Switch;

    invoke-virtual {v3, v7}, Landroid/widget/Switch;->setChecked(Z)V

    const v1, 0x7f0d015f

    iget-object v3, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference$3;->this$0:Lcom/ime/implement/setting/ACLanguagesSettingsPreference;

    # getter for: Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;
    invoke-static {v3}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->access$100(Lcom/ime/implement/setting/ACLanguagesSettingsPreference;)Lcom/ime/implement/setting/ACLanguagesSettings;

    move-result-object v3

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference$3;->this$0:Lcom/ime/implement/setting/ACLanguagesSettingsPreference;

    # getter for: Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;
    invoke-static {v4}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->access$100(Lcom/ime/implement/setting/ACLanguagesSettingsPreference;)Lcom/ime/implement/setting/ACLanguagesSettings;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/ime/implement/setting/ACLanguagesSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p2, :cond_3

    iget-object v3, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference$3;->this$0:Lcom/ime/implement/setting/ACLanguagesSettingsPreference;

    # getter for: Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;
    invoke-static {v3}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->access$100(Lcom/ime/implement/setting/ACLanguagesSettingsPreference;)Lcom/ime/implement/setting/ACLanguagesSettings;

    move-result-object v3

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference$3;->this$0:Lcom/ime/implement/setting/ACLanguagesSettingsPreference;

    # getter for: Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;
    invoke-static {v4}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->access$100(Lcom/ime/implement/setting/ACLanguagesSettingsPreference;)Lcom/ime/implement/setting/ACLanguagesSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/implement/setting/ACLanguagesSettings;->getCheckedItemNumber()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcom/ime/implement/setting/ACLanguagesSettings;->setCheckedItemNumber(I)V

    :goto_1
    iget-object v3, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference$3;->this$0:Lcom/ime/implement/setting/ACLanguagesSettingsPreference;

    # getter for: Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mSelectedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v3}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->access$500(Lcom/ime/implement/setting/ACLanguagesSettingsPreference;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference$3;->this$0:Lcom/ime/implement/setting/ACLanguagesSettingsPreference;

    iget-object v4, v4, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguageName:Ljava/lang/String;

    invoke-interface {v3, v4, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference$3;->this$0:Lcom/ime/implement/setting/ACLanguagesSettingsPreference;

    # getter for: Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mSelectedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v3}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->access$500(Lcom/ime/implement/setting/ACLanguagesSettingsPreference;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v3, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference$3;->this$0:Lcom/ime/implement/setting/ACLanguagesSettingsPreference;

    # getter for: Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->key:Ljava/lang/String;
    invoke-static {v3}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->access$300(Lcom/ime/implement/setting/ACLanguagesSettingsPreference;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference$3;->this$0:Lcom/ime/implement/setting/ACLanguagesSettingsPreference;

    # getter for: Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;
    invoke-static {v3}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->access$100(Lcom/ime/implement/setting/ACLanguagesSettingsPreference;)Lcom/ime/implement/setting/ACLanguagesSettings;

    move-result-object v3

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference$3;->this$0:Lcom/ime/implement/setting/ACLanguagesSettingsPreference;

    # getter for: Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;
    invoke-static {v4}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->access$100(Lcom/ime/implement/setting/ACLanguagesSettingsPreference;)Lcom/ime/implement/setting/ACLanguagesSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/implement/setting/ACLanguagesSettings;->getCheckedItemNumber()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/ime/implement/setting/ACLanguagesSettings;->setCheckedItemNumber(I)V

    goto :goto_1
.end method

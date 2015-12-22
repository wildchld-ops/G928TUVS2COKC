.class Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodAndLanguageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    # invokes: Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V
    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->access$700(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)V

    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    # getter for: Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->uspLevel:I
    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->access$800(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    # getter for: Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHandwritingLanguageObserver:Landroid/database/ContentObserver;
    invoke-static {v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->access$900(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "selected_input_method_subtype"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    # getter for: Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->uspLevel:I
    invoke-static {v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->access$800(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)I

    move-result v1

    if-le v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    # getter for: Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHandwritingLanguage:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->access$100(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    # getter for: Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHandwritingLanguage:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->access$100(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    # invokes: Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getSelectLanguage()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->access$000(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v1, "handwriting_language"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    # getter for: Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHandwritingLanguageObserver:Landroid/database/ContentObserver;
    invoke-static {v2}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->access$900(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

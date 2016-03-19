.class public Lcom/sec/android/inputmethod/KnoxCustomKeypadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KnoxCustomKeypadReceiver.java"


# static fields
.field public static final ACTION_KnoxCustom_Keypad_Changed:Ljava/lang/String; = "android.app.enterprise.knoxcustom"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "mode"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "com.sec.android.inputmethod_preferences"

    const/4 v5, 0x3

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "android.app.enterprise.knoxcustom"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v2, :cond_3

    const-string v4, "KNOX_CUSTOM_SDK_DISABLE_SETTING"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v4, "SETTINGS_DEFAULT_PREDICTION_ON"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_2
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_3
    if-ne v2, v6, :cond_4

    const-string v4, "SETTINGS_DEFAULT_PREDICTION_ON"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_4
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    const-string v4, "KNOX_CUSTOM_SDK_DISABLE_SETTING"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

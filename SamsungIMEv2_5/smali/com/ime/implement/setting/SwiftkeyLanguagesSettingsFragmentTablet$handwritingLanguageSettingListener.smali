.class Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$handwritingLanguageSettingListener;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagesSettingsFragmentTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "handwritingLanguageSettingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;


# direct methods
.method private constructor <init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$handwritingLanguageSettingListener;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$handwritingLanguageSettingListener;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/high16 v5, 0x34000000

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$handwritingLanguageSettingListener;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    invoke-virtual {v3}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->sendSupportLanguage()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$handwritingLanguageSettingListener;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    invoke-virtual {v3}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->popBackStack()V

    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "tablet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.settings.handwritingsearch.HandwritingLanguageTablet"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "handwriting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$handwritingLanguageSettingListener;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    invoke-virtual {v3, v1}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "SwiftkeyLanguagesSettingsFragmentTablet"

    const-string v4, "ActivityNotFoundException"

    invoke-static {v3, v4}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "handwriting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.Settings$HandwritingLanguageActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_1
    iget-object v3, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$handwritingLanguageSettingListener;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    invoke-virtual {v3, v1}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v3, "SwiftkeyLanguagesSettingsFragmentTablet"

    const-string v4, "ActivityNotFoundException"

    invoke-static {v3, v4}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

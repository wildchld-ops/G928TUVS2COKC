.class Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$1;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagesSettingsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$1;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const v10, 0x7f1000df

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    if-nez v10, :cond_1

    :cond_0
    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_1
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v7}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$1;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    iget-object v10, v10, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/common/InputManager;->translatelanguageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-interface {v7}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_3
    move-object v5, v7

    goto :goto_1

    :cond_4
    iget-object v10, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$1;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    invoke-virtual {v10}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d000c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$1;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    invoke-virtual {v10}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d000d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v5, :cond_7

    invoke-static {v5}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isPreloadLanguagePack(Lcom/touchtype_fluency/util/LanguagePack;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$1;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v10}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->access$000(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    :goto_2
    const/4 v10, 0x1

    goto :goto_0

    :cond_5
    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$1;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v10}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->access$000(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_6
    new-instance v3, Landroid/content/Intent;

    iget-object v10, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$1;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v10}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->access$000(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v10

    const-class v11, Lcom/ime/implement/setting/SwiftkeyDeleteLanguages;

    invoke-direct {v3, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v10, "languageLongPressed"

    invoke-virtual {v3, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v10, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$1;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    const/4 v11, 0x0

    invoke-virtual {v10, v3, v11}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.class Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$1;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagesSettingsFragmentTablet.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$1;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const v12, 0x7f1000df

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v2

    const/4 v6, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v7}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$1;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    iget-object v12, v12, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lcom/ime/framework/common/InputManager;->translatelanguageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-interface {v7}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    :cond_1
    move-object v6, v7

    goto :goto_0

    :cond_2
    iget-object v12, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$1;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    invoke-virtual {v12}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d000c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v12, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$1;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    invoke-virtual {v12}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d000d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v6, :cond_5

    invoke-static {v6}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isPreloadLanguagePack(Lcom/touchtype_fluency/util/LanguagePack;)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$1;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;
    invoke-static {v12}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->access$000(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;)Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v10, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    :goto_1
    const/4 v12, 0x1

    :goto_2
    return v12

    :cond_3
    invoke-interface {v6}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$1;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mParentActivity:Lcom/sec/android/inputmethod/SamsungKeypadSettings;
    invoke-static {v12}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->access$000(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;)Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v3, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_4
    iget-object v12, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$1;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    invoke-virtual {v12}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v11

    new-instance v9, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;

    invoke-direct {v9}, Lcom/ime/implement/setting/SwiftkeyDeleteLanguagesFragmentTablet;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v12, "languageLongPressed"

    invoke-virtual {v1, v12, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v12, 0x7f1000be

    invoke-virtual {v11, v12, v9}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v9, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v11}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    goto :goto_2
.end method

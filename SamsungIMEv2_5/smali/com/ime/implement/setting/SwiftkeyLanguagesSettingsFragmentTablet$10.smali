.class Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$10;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagesSettingsFragmentTablet.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;
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

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$10;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v4, 0x1

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->access$500()Landroid/widget/PopupWindow;

    move-result-object v5

    if-eqz v5, :cond_3

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->access$500()Landroid/widget/PopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->access$500()Landroid/widget/PopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype_fluency/util/LanguagePack;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->access$600()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_0

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->access$600()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$10;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    iget-object v6, v6, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/ime/framework/common/InputManager;->translatelanguageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->access$600()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    invoke-virtual {v3, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$10;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    iget-object v5, v5, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isUseVOResourceManager()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$10;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    # invokes: Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V
    invoke-static {v5, v2}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->access$700(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;Lcom/touchtype_fluency/util/LanguagePack;)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    # setter for: Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->access$602(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$10;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    # invokes: Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->notifyUpdateSelectedLanguageList()V
    invoke-static {v5}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->access$800(Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;)V

    iget-object v5, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$10;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    invoke-virtual {v5, v4}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->rebuildLanguageList(Z)V

    :goto_1
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

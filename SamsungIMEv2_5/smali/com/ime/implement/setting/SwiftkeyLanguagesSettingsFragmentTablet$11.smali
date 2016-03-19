.class Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$11;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagesSettingsFragmentTablet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$11;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->access$500()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    # setter for: Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->access$602(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet$11;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;

    invoke-virtual {v0}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettingsFragmentTablet;->rebuildLanguageList()V

    return-void
.end method

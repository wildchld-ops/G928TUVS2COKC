.class Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$4;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagePreferenceTablet.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->CheckandSettheViewState(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$4;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$4;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mViewInvalidateInProgress:Z
    invoke-static {v0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$600(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$4;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$4;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v1}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$700(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v1

    # invokes: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->isDownloaded(Lcom/touchtype_fluency/util/LanguagePack;)Z
    invoke-static {v0, v1}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$800(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;Lcom/touchtype_fluency/util/LanguagePack;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet$4;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;

    # invokes: Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->handleLanguageEnableStatusChange()V
    invoke-static {v0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;->access$900(Lcom/ime/implement/setting/SwiftkeyLanguagePreferenceTablet;)V

    :cond_0
    return-void
.end method

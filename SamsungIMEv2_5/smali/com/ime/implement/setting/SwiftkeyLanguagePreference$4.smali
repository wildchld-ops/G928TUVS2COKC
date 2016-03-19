.class Lcom/ime/implement/setting/SwiftkeyLanguagePreference$4;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagePreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->CheckandSettheViewState(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreference;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/SwiftkeyLanguagePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->mViewInvalidateInProgress:Z
    invoke-static {v0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->access$700(Lcom/ime/implement/setting/SwiftkeyLanguagePreference;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreference;

    iget-object v1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v1}, Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->access$800(Lcom/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v1

    # invokes: Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->isDownloaded(Lcom/touchtype_fluency/util/LanguagePack;)Z
    invoke-static {v0, v1}, Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->access$900(Lcom/ime/implement/setting/SwiftkeyLanguagePreference;Lcom/touchtype_fluency/util/LanguagePack;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreference;

    # invokes: Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->handleLanguageEnableStatusChange()V
    invoke-static {v0}, Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->access$1000(Lcom/ime/implement/setting/SwiftkeyLanguagePreference;)V

    :cond_0
    return-void
.end method

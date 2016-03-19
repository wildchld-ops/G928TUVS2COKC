.class Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4$3;
.super Ljava/lang/Object;
.source "AutoTextSettingsFragmentTablet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;->onListingComplete(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;

.field final synthetic val$termsToAdd:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4$3;->this$1:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;

    iput-object p2, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4$3;->val$termsToAdd:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4$3;->val$termsToAdd:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;

    invoke-virtual {v1}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getTerm()Lcom/touchtype_fluency/Term;

    move-result-object v5

    invoke-virtual {v5}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getTerm()Lcom/touchtype_fluency/Term;

    move-result-object v5

    invoke-virtual {v5}, Lcom/touchtype_fluency/Term;->getEncodings()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4$3;->this$1:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;

    iget-object v5, v5, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;
    invoke-static {v5}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$200(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getUserWordList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4$3;->this$1:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;

    iget-object v5, v5, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # invokes: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->resortWordList()V
    invoke-static {v5}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$100(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)V

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4$3;->this$1:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;

    iget-object v5, v5, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;
    invoke-static {v5}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$200(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->notifyDataSetChanged()V

    iget-object v5, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4$3;->this$1:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;

    iget-object v5, v5, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mParentActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$000(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

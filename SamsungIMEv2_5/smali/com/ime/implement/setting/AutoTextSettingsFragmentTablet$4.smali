.class Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;
.super Ljava/lang/Object;
.source "AutoTextSettingsFragmentTablet.java"

# interfaces
.implements Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddingComplete(ZLcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;)V
    .locals 6

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mParentActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$000(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4$1;

    invoke-direct {v5, p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4$1;-><init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSession:Lcom/touchtype_fluency/Session;
    invoke-static {}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$300()Lcom/touchtype_fluency/Session;

    move-result-object v4

    invoke-interface {v4}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v3

    new-instance v2, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v2}, Lcom/touchtype_fluency/Sequence;-><init>()V

    invoke-virtual {p2}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getTerm()Lcom/touchtype_fluency/Term;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/touchtype_fluency/Sequence;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v1, v4, :cond_0

    invoke-interface {v3, v2}, Lcom/touchtype_fluency/Trainer;->addSequence(Lcom/touchtype_fluency/Sequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {v3}, Lcom/touchtype_fluency/Trainer;->write()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v4, "AutoText"

    const-string v5, "onAddingComplete"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public onEditingComplete(ZLcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;)V
    .locals 4

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mParentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$000(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4$2;

    invoke-direct {v3, p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4$2;-><init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSession:Lcom/touchtype_fluency/Session;
    invoke-static {}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$300()Lcom/touchtype_fluency/Session;

    move-result-object v2

    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Lcom/touchtype_fluency/Trainer;->write()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v2, "AutoText"

    const-string v3, "onEditingComplete"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onListingComplete(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mParentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$000(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4$3;

    invoke-direct {v1, p0, p1}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4$3;-><init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string v0, "AutoText"

    const-string v1, "onListingComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRemovingComplete(Z)V
    .locals 4

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mParentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$000(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4$4;

    invoke-direct {v3, p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4$4;-><init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mSession:Lcom/touchtype_fluency/Session;
    invoke-static {}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$300()Lcom/touchtype_fluency/Session;

    move-result-object v2

    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Lcom/touchtype_fluency/Trainer;->write()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v2, "AutoText"

    const-string v3, "onRemovingComplete"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResortingComplete()V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mParentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$000(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4$5;

    invoke-direct {v1, p0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4$5;-><init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.class Lcom/ime/implement/setting/AutoTextSettings$7$1;
.super Ljava/lang/Object;
.source "AutoTextSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/AutoTextSettings$7;->onAddingComplete(ZLcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ime/implement/setting/AutoTextSettings$7;

.field final synthetic val$interUserTerm:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/AutoTextSettings$7;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettings$7$1;->this$1:Lcom/ime/implement/setting/AutoTextSettings$7;

    iput-object p2, p0, Lcom/ime/implement/setting/AutoTextSettings$7$1;->val$interUserTerm:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings$7$1;->this$1:Lcom/ime/implement/setting/AutoTextSettings$7;

    iget-object v4, v4, Lcom/ime/implement/setting/AutoTextSettings$7;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # invokes: Lcom/ime/implement/setting/AutoTextSettings;->resortWordList()V
    invoke-static {v4}, Lcom/ime/implement/setting/AutoTextSettings;->access$600(Lcom/ime/implement/setting/AutoTextSettings;)V

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mSession:Lcom/touchtype_fluency/Session;
    invoke-static {}, Lcom/ime/implement/setting/AutoTextSettings;->access$700()Lcom/touchtype_fluency/Session;

    move-result-object v4

    invoke-interface {v4}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v3

    new-instance v2, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v2}, Lcom/touchtype_fluency/Sequence;-><init>()V

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings$7$1;->val$interUserTerm:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;

    invoke-virtual {v4}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getTerm()Lcom/touchtype_fluency/Term;

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
    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings$7$1;->this$1:Lcom/ime/implement/setting/AutoTextSettings$7;

    iget-object v4, v4, Lcom/ime/implement/setting/AutoTextSettings$7;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;
    invoke-static {v4}, Lcom/ime/implement/setting/AutoTextSettings;->access$200(Lcom/ime/implement/setting/AutoTextSettings;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->notifyDataSetChanged()V

    iget-object v4, p0, Lcom/ime/implement/setting/AutoTextSettings$7$1;->this$1:Lcom/ime/implement/setting/AutoTextSettings$7;

    iget-object v4, v4, Lcom/ime/implement/setting/AutoTextSettings$7;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    invoke-virtual {v4}, Lcom/ime/implement/setting/AutoTextSettings;->invalidateOptionsMenu()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

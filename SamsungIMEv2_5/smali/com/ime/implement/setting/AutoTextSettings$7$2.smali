.class Lcom/ime/implement/setting/AutoTextSettings$7$2;
.super Ljava/lang/Object;
.source "AutoTextSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/AutoTextSettings$7;->onEditingComplete(ZLcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ime/implement/setting/AutoTextSettings$7;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/AutoTextSettings$7;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettings$7$2;->this$1:Lcom/ime/implement/setting/AutoTextSettings$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings$7$2;->this$1:Lcom/ime/implement/setting/AutoTextSettings$7;

    iget-object v2, v2, Lcom/ime/implement/setting/AutoTextSettings$7;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # invokes: Lcom/ime/implement/setting/AutoTextSettings;->resortWordList()V
    invoke-static {v2}, Lcom/ime/implement/setting/AutoTextSettings;->access$600(Lcom/ime/implement/setting/AutoTextSettings;)V

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mSession:Lcom/touchtype_fluency/Session;
    invoke-static {}, Lcom/ime/implement/setting/AutoTextSettings;->access$700()Lcom/touchtype_fluency/Session;

    move-result-object v2

    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Lcom/touchtype_fluency/Trainer;->write()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/ime/implement/setting/AutoTextSettings$7$2;->this$1:Lcom/ime/implement/setting/AutoTextSettings$7;

    iget-object v2, v2, Lcom/ime/implement/setting/AutoTextSettings$7;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    # getter for: Lcom/ime/implement/setting/AutoTextSettings;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;
    invoke-static {v2}, Lcom/ime/implement/setting/AutoTextSettings;->access$200(Lcom/ime/implement/setting/AutoTextSettings;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapter;->notifyDataSetChanged()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

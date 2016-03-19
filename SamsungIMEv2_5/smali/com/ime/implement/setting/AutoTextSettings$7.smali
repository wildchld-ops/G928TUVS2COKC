.class Lcom/ime/implement/setting/AutoTextSettings$7;
.super Ljava/lang/Object;
.source "AutoTextSettings.java"

# interfaces
.implements Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/AutoTextSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/AutoTextSettings;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/AutoTextSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettings$7;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddingComplete(ZLcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;)V
    .locals 3

    move-object v0, p2

    iget-object v1, p0, Lcom/ime/implement/setting/AutoTextSettings$7;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    new-instance v2, Lcom/ime/implement/setting/AutoTextSettings$7$1;

    invoke-direct {v2, p0, v0}, Lcom/ime/implement/setting/AutoTextSettings$7$1;-><init>(Lcom/ime/implement/setting/AutoTextSettings$7;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;)V

    invoke-virtual {v1, v2}, Lcom/ime/implement/setting/AutoTextSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string v1, "AutoText"

    const-string v2, "onAddingComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onEditingComplete(ZLcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;)V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings$7;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    new-instance v1, Lcom/ime/implement/setting/AutoTextSettings$7$2;

    invoke-direct {v1, p0}, Lcom/ime/implement/setting/AutoTextSettings$7$2;-><init>(Lcom/ime/implement/setting/AutoTextSettings$7;)V

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/AutoTextSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string v0, "AutoText"

    const-string v1, "onEditingComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
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

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings$7;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    new-instance v1, Lcom/ime/implement/setting/AutoTextSettings$7$3;

    invoke-direct {v1, p0, p1}, Lcom/ime/implement/setting/AutoTextSettings$7$3;-><init>(Lcom/ime/implement/setting/AutoTextSettings$7;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/AutoTextSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string v0, "AutoText"

    const-string v1, "onListingComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRemovingComplete(Z)V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings$7;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    new-instance v1, Lcom/ime/implement/setting/AutoTextSettings$7$4;

    invoke-direct {v1, p0}, Lcom/ime/implement/setting/AutoTextSettings$7$4;-><init>(Lcom/ime/implement/setting/AutoTextSettings$7;)V

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/AutoTextSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string v0, "AutoText"

    const-string v1, "onRemovingComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResortingComplete()V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettings$7;->this$0:Lcom/ime/implement/setting/AutoTextSettings;

    new-instance v1, Lcom/ime/implement/setting/AutoTextSettings$7$5;

    invoke-direct {v1, p0}, Lcom/ime/implement/setting/AutoTextSettings$7$5;-><init>(Lcom/ime/implement/setting/AutoTextSettings$7;)V

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/AutoTextSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
